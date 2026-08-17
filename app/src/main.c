#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(demo, LOG_LEVEL_DBG);

// Define stack size for threads
#define STACK_SIZE 1024

// Define thread priorities
#define PRIO_LOW 7
#define PRIO_MED 5
#define PRIO_HIGH 3
#define PRIO_COOP -1  // Cooperative priority


void t_low_fn(void *p1, void *p2, void *p3)
{
    LOG_INF("T_LOW RUNNING");

    while (1) {
        LOG_INF("T_LOW ticking: %u", k_uptime_get_32());
        k_sleep(K_MSEC(300));
    }
}

void t_med_fn(void *p1, void *p2, void *p3)
{
    LOG_INF("T_MED RUNNING");

    while (1) {
        LOG_INF("T_MED ticking: %u", k_uptime_get_32());
        k_sleep(K_MSEC(200));
    }
}

void t_high_fn(void *p1, void *p2, void *p3)
{
    LOG_INF("T_HIGH RUNNING");

    while (1) {
        LOG_INF("T_HIGH ticking: %u", k_uptime_get_32());
        k_sleep(K_MSEC(100));
    }
}

void t_coop_fn(void *p1, void *p2, void *p3)
{
    LOG_INF("T_Coop RUNNING (Priority -1)");

    while (1) {
        LOG_INF("T_Coop: Starting 5 iterations of busy work...");

        for (int i = 0; i < 5; i++) {
            volatile int dummy = 0;
            for (int j = 0; j < 10000; j++) {
                dummy += j;
            }
            /* Minimal work per iteration; avoid logging each step to prevent
             * flooding the log backend (which is slow and can drop messages).
             */
            k_yield();
        }
        LOG_INF("T_Coop: Completed cycle");
        k_sleep(K_MSEC(100));  // Sleep to allow other threads to run
    }
}

// Define threads with different priorities
K_THREAD_DEFINE(thread_low, STACK_SIZE, t_low_fn,
                NULL, NULL, NULL, PRIO_LOW, 0, 0);
K_THREAD_DEFINE(thread_med, STACK_SIZE, t_med_fn,
                NULL, NULL, NULL, PRIO_MED, 0, 0);
K_THREAD_DEFINE(thread_high, STACK_SIZE, t_high_fn,
                NULL, NULL, NULL, PRIO_HIGH, 0, 0);
K_THREAD_DEFINE(thread_coop, STACK_SIZE, t_coop_fn,
                NULL, NULL, NULL, PRIO_COOP, 0, 0); 

// Main function           
int main(void)
{
    LOG_INF("Main thread started");
    return 0;
}

