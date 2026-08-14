#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(demo, LOG_LEVEL_DBG);

#define STACK_SIZE 1024

#define PRIO_A 10
#define PRIO_B 5

void thread_a_fn(void *p1, void *p2, void *p3)
{
    LOG_DBG("Thread A: Debug tick %d", k_uptime_get_32()); // Use LOG_DBG
    LOG_INF("Thread A: Info tick");

    while (1) {
        k_msleep(200);
    }
}

void thread_b_fn(void *p1, void *p2, void *p3)
{
    LOG_DBG("Thread B: Debug tick %d", k_uptime_get_32()); // Use LOG_DBG
    LOG_INF("Thread B: Info tick");

    while (1) {
        k_msleep(300);
    }
}

K_THREAD_DEFINE(thread_a, STACK_SIZE, thread_a_fn,
                NULL, NULL, NULL, PRIO_A, 0, 0);
K_THREAD_DEFINE(thread_b, STACK_SIZE, thread_b_fn,
                NULL, NULL, NULL, PRIO_B, 0, 0);

int main(void)
{
    LOG_INF("Main thread: Starting application");
    return 0;
}

