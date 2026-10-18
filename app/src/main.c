/*
* Goal: Study reliability under pressure
* Task:
* Build a producer/consumer pipeline
* Add a task watchdog
* Simulate a stuck consumer (long k_sleep in consumer thread)
* Observe: queue fills, watchdog fires, callback triggered
* Add a health-check thread that monitors queue fill level and logs a warning at 75% capacity
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/task_wdt/task_wdt.h>

LOG_MODULE_REGISTER(sensor_pipeline, LOG_LEVEL_INF);

#define STACK_SIZE   1024
#define SAMPLE_MS    100
#define SAMPLE_COUNT 10
#define QUEUE_CAPACITY 4
#define WDT_TIMEOUT_MS 1000 /* Watchdog timeout threshold */
#define CONSUMER_STUCK_MS (WDT_TIMEOUT_MS + 500U)

/* Each worker owns one task-watchdog channel. */
static int producer_wdt_id = -1;
static int consumer_wdt_id = -1;
static char producer_wdt_name[] = "producer";
static char consumer_wdt_name[] = "consumer";

K_THREAD_STACK_DEFINE(consumer_stack, STACK_SIZE);
K_THREAD_STACK_DEFINE(producer_stack, STACK_SIZE);
static struct k_thread consumer_thread;
static struct k_thread producer_thread;

/* ---------- Message queue shared by the producer and consumer ---------- */

struct sensor_msg {
    int value;
    uint32_t tick;
};

K_MSGQ_DEFINE(sensor_queue, sizeof(struct sensor_msg), QUEUE_CAPACITY, 4);

static void task_wdt_expired(int channel_id, void *user_data)
{
    LOG_ERR("[TASK_WDT] %s timed out (channel %d)",
            (char *)user_data, channel_id);
}

/* ---------- Consumer: removes and processes every queued sample ---------- */

static void consumer_thread_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1);
    ARG_UNUSED(p2);
    ARG_UNUSED(p3);

    for (int i = 0; i < SAMPLE_COUNT; i++) {
        struct sensor_msg msg;
        int ret = k_msgq_get(&sensor_queue, &msg, K_FOREVER);
        if (ret != 0) {
            LOG_ERR("[CONSUMER] queue read failed: %d", ret);
            task_wdt_delete(consumer_wdt_id);
            return;
        }

        k_msleep(CONSUMER_STUCK_MS);

        LOG_INF("[CONSUMER] value=%d tick=%u queue=%u/%u",
                msg.value, msg.tick,
                k_msgq_num_used_get(&sensor_queue), QUEUE_CAPACITY);

        task_wdt_feed(consumer_wdt_id);
    }

    task_wdt_delete(consumer_wdt_id);
}

/* ---------- Producer: creates samples and queues them for the consumer ---------- */

static void sensor_thread_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1);
    ARG_UNUSED(p2);
    ARG_UNUSED(p3);

    for (int i = 0; i < SAMPLE_COUNT; i++) {
        k_msleep(SAMPLE_MS);

        struct sensor_msg msg = {
            .value = 20 + i,
            .tick = k_uptime_get_32(),
        };

        int ret = k_msgq_put(&sensor_queue, &msg, K_FOREVER);
        if (ret != 0) {
            LOG_ERR("[PRODUCER] queue write failed: %d", ret);
            task_wdt_delete(producer_wdt_id);
            return;
        }

        LOG_INF("[PRODUCER] queued value=%d tick=%u queue=%u/%u",
            msg.value, msg.tick,
            k_msgq_num_used_get(&sensor_queue), QUEUE_CAPACITY);

        task_wdt_feed(producer_wdt_id);
    }

    task_wdt_delete(producer_wdt_id);
}

int main(void)
{
    LOG_INF("=== Producer/consumer pipeline ===");

    int ret = task_wdt_init(NULL);
    if (ret != 0) {
        LOG_ERR("Task watchdog initialization failed: %d", ret);
        return ret;
    }

    producer_wdt_id = task_wdt_add(WDT_TIMEOUT_MS, task_wdt_expired,
                                   producer_wdt_name);
    if (producer_wdt_id < 0) {
        LOG_ERR("Failed to add producer to task watchdog: %d", producer_wdt_id);
        return producer_wdt_id;
    }

    consumer_wdt_id = task_wdt_add(WDT_TIMEOUT_MS, task_wdt_expired,
                                   consumer_wdt_name);
    if (consumer_wdt_id < 0) {
        LOG_ERR("Failed to add consumer to task watchdog: %d", consumer_wdt_id);
        task_wdt_delete(producer_wdt_id);
        return consumer_wdt_id;
    }

    k_tid_t consumer_tid = k_thread_create(&consumer_thread, consumer_stack,
                                            K_THREAD_STACK_SIZEOF(consumer_stack),
                                            consumer_thread_fn,
                                            NULL, NULL, NULL, 5, 0, K_NO_WAIT);
    k_tid_t producer_tid = k_thread_create(&producer_thread, producer_stack,
                                            K_THREAD_STACK_SIZEOF(producer_stack),
                                            sensor_thread_fn,
                                            NULL, NULL, NULL, 5, 0, K_NO_WAIT);

    k_thread_join(producer_tid, K_FOREVER);
    k_thread_join(consumer_tid, K_FOREVER);
    LOG_INF("Pipeline complete");
    return 0;
}