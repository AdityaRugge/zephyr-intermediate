/*
 * Goal: explain and reduce a Zephyr scheduling delay
 * Tasks:
 * Run the provided producer-consumer application 
 * Define and detect its response-time guarantee
 * Add sequence-based logs and deadline-miss counting
 * Inspect thread priorities and states with the kernel shell
 * Capture CTF and decode it with Babeltrace
 * Apply one correction and repeat the measurement
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/tracing/tracing.h>

LOG_MODULE_REGISTER(Test, LOG_LEVEL_INF);

#define STACK_SIZE            2048
#define CONTROL_PRIORITY         4
#define MAINTENANCE_PRIORITY     7
#define EVENT_PERIOD_MS        250
#define MAINTENANCE_LOAD_US  45000

#define RESPONSE_TIME_GUARANTEE_MS  10 /* Control work must start within 10 ms of the timer expiry. */

struct control_event {
    uint32_t seq;
    uint32_t ready_ms;
};

K_MSGQ_DEFINE(control_queue, sizeof(struct control_event), 4, 4);
K_SEM_DEFINE(maintenance_start, 0, 1);

/* ================================================================== */
/*  Timer expiry: creates one control event                           */
/* ================================================================== */

static void event_timer_expiry(struct k_timer *timer)
{
    ARG_UNUSED(timer);

    static uint32_t seq;
    struct control_event event = {
        .seq = seq++,
        .ready_ms = k_uptime_get_32(),
    };

    /* Timer expiry runs in interrupt context, so never wait here. */
    int ret = k_msgq_put(&control_queue, &event, K_NO_WAIT);

    if (ret != 0) {
        return;
    }

    /* Both threads become ready when the timer interrupt returns. */
    k_sem_give(&maintenance_start);

}

K_TIMER_DEFINE(event_timer, event_timer_expiry, NULL);

/* ================================================================== */
/*  Control thread                                                   */
/* ================================================================== */

static void control_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1); ARG_UNUSED(p2); ARG_UNUSED(p3);

    static uint32_t deadline_misses = 0;
    static uint32_t last_warn_ms = 0;
    const uint32_t warn_interval_ms = 1000; // Rate-limit warnings to once per second

    while (true) {
        struct control_event event;
        int ret = k_msgq_get(&control_queue, &event, K_FOREVER);

        if (ret != 0) {
            LOG_ERR("[CONTROL] receive failed: %d", ret);
            continue;
        }

        uint32_t now = k_uptime_get_32();
        uint32_t latency = now - event.ready_ms;

        sys_trace_named_event("control_response", event.seq, latency);

        if (latency > RESPONSE_TIME_GUARANTEE_MS) {
            deadline_misses++;
            if ((now - last_warn_ms) >= warn_interval_ms) {
                LOG_WRN("[CONTROL] DEADLINE MISS: seq=%u | Latency: %u ms (Limit: %u ms) | Total Misses: %u",
                        event.seq, latency, RESPONSE_TIME_GUARANTEE_MS, deadline_misses);
                last_warn_ms = now;
            }
        } else {
            LOG_INF("[CONTROL] processed seq=%u successfully in %u ms",
                    event.seq, latency);
        }
    }
}

/* ================================================================== */
/*  Background maintenance thread                                    */
/* ================================================================== */

static void maintenance_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1); ARG_UNUSED(p2); ARG_UNUSED(p3);

    while (true) {
        k_sem_take(&maintenance_start, K_FOREVER);

        sys_trace_named_event("maintenance_start", 0, 0);
        k_busy_wait(MAINTENANCE_LOAD_US);
        sys_trace_named_event("maintenance_end", 0, 0);
    }
}

K_THREAD_DEFINE(control, STACK_SIZE, control_fn,
                NULL, NULL, NULL, CONTROL_PRIORITY, 0, 0);

K_THREAD_DEFINE(maintenance, STACK_SIZE, maintenance_fn,
                NULL, NULL, NULL, MAINTENANCE_PRIORITY, 0, 0);

int main(void)
{
    sys_trace_named_event("app_start", CONTROL_PRIORITY, MAINTENANCE_PRIORITY);
    LOG_INF("=== L6 : Runtime Investigation ===");
    LOG_INF("Control work must start within 10 ms");
    LOG_INF("Inspect, measure, trace, explain, and correct the delay");

    k_timer_start(&event_timer, K_MSEC(500), K_MSEC(EVENT_PERIOD_MS));

    return 0;
}