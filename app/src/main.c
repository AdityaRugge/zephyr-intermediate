/*
 * Starter Code
 * ================================================================
 * BONUS (debounce):
 *   Change sensor_sim to fire 5 events within 20ms (not 1 per 100ms).
 *   Use k_work_reschedule with 30ms delay so only ONE handler
 *   call occurs after the burst - not 5.
 *   Log the reschedule timestamps to confirm the burst collapses.
 *
 * ================================================================
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <stdbool.h>

LOG_MODULE_REGISTER(homework, LOG_LEVEL_DBG);

#define STACK_SIZE    1024
#define SENSOR_MS     100    /* sensor fires every 100ms */
#define EVENT_COUNT   10     /* total sensor events to produce */

/* Statistics */
static int total_events;
static int total_processed;

static void sensor_handler(struct k_work *work)
{
    ARG_UNUSED(work);

    total_processed++;

    LOG_INF("[HANDLER] Processed burst  total=%d  tick=%u \n",
            total_processed, k_uptime_get_32());
}

K_WORK_DELAYABLE_DEFINE(sensor_work, sensor_handler);


static void sensor_sim_fn(void *p1, void *p2, void *p3)
{
    for (int burst = 0; burst < EVENT_COUNT / 5; burst++) // 5 events per burst
    {
        for (int i = 0; i < 5; i++) // 5 events in a burst
        {
            k_msleep(4); /* 5 events across ~20ms */

            total_events++;
            LOG_INF("[SENSOR] burst=%d event %d  tick=%u",
                    burst, i, k_uptime_get_32());

            int ret = k_work_reschedule(&sensor_work, K_MSEC(30)); // reschedule with 30ms delay
            if (ret < 0) {
                LOG_ERR("reschedule failed: %d", ret);
            } else {
                LOG_INF("[DEBOUNCE] rescheduled  tick=%u", k_uptime_get_32());
            }
        }

        k_msleep(200); /* gap so bursts don't overlap */
    }

    LOG_INF("[SENSOR] all bursts produced");
}

K_THREAD_DEFINE(sensor_thread,  STACK_SIZE, sensor_sim_fn, NULL, NULL, NULL, 5, 0, 0); 

int main(void)
{
    LOG_INF("\n\n");
    LOG_INF("=== L3 Debounce Bonus: Burst events + k_work_reschedule ===");
    LOG_INF("Sensor fires bursts of 5 events within ~20ms, debounce delay=30ms");
    LOG_INF("Expect 1 handler call per burst (%d bursts total)", EVENT_COUNT / 5);
    LOG_INF("Run this and confirm burst events collapse into single handler calls.");

    /* Wait long enough for all events to complete */
    k_msleep((EVENT_COUNT / 5) * (5 * 4 + 200) + 500);

    return 0;
}
