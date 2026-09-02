/*
 * Simple Event-Driven System with zbus
 *
 * TASKS:
 *   1. One zbus channel for sensor data
 *   2. Publish a simulated sensor sample every 100ms
 *   3. One listener - reacts instantly (fast display update)
 *   4. One subscriber - reacts on its own thread (slower)
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/zbus/zbus.h>

LOG_MODULE_REGISTER(zbus_simple, LOG_LEVEL_DBG);

#define STACK_SIZE   1024
#define SAMPLE_MS    100
#define SAMPLE_COUNT 5

/* ---------- 1. Define the message + the channel ---------- */

struct sensor_msg {
    int value;
    uint32_t tick;
};

ZBUS_CHAN_DEFINE(sensor_chan,
    struct sensor_msg,
    NULL, NULL,
    ZBUS_OBSERVERS_EMPTY,
    ZBUS_MSG_INIT(.value = 0, .tick = 0)
);

/* ---------- 3. Listener: runs immediately when data is published ---------- */

static void display_cb(const struct zbus_channel *chan)
{
    const struct sensor_msg *msg = zbus_chan_const_msg(chan);
    LOG_INF("[DISPLAY] value=%d tick=%u", msg->value, msg->tick);
}

ZBUS_LISTENER_DEFINE(display_listener, display_cb);

/* ---------- 4. Subscriber: has its own thread, reads at its own pace ---------- */

ZBUS_SUBSCRIBER_DEFINE(logger_sub, 4);

static void logger_thread_fn(void *p1, void *p2, void *p3)
{
    const struct zbus_channel *chan;

    while (!zbus_sub_wait(&logger_sub, &chan, K_FOREVER)) {
        struct sensor_msg msg;
        zbus_chan_read(&sensor_chan, &msg, K_NO_WAIT);

        k_msleep(250); /* Simulate slow processing */

        LOG_INF("[LOGGER] value=%d tick=%u", msg.value, msg.tick);
    }
}

K_THREAD_DEFINE(logger_thread, STACK_SIZE, logger_thread_fn,
                 NULL, NULL, NULL, 5, 0, 0);

/* ---------- Connect listener + subscriber to the channel ---------- */

ZBUS_CHAN_ADD_OBS(sensor_chan, display_listener, 3);
ZBUS_CHAN_ADD_OBS(sensor_chan, logger_sub, 3);

/* ---------- 2. Publisher: sends a sample every 100ms ---------- */

static void sensor_thread_fn(void *p1, void *p2, void *p3)
{
    for (int i = 0; i < SAMPLE_COUNT; i++) {
        k_msleep(SAMPLE_MS);

        struct sensor_msg msg = {
            .value = 20 + i,
            .tick = k_uptime_get_32(),
        };

        LOG_INF("[SENSOR] value=%d tick=%u", msg.value, msg.tick);
        zbus_chan_pub(&sensor_chan, &msg, K_MSEC(50));
    }
}

K_THREAD_DEFINE(sensor_thread, STACK_SIZE, sensor_thread_fn,
                 NULL, NULL, NULL, 5, 0, 0);

int main(void)
{
    LOG_INF("=== Simple zbus Demo ===");
    k_msleep(SAMPLE_COUNT * SAMPLE_MS + 500);
    return 0;
}