#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(mutex_demo, LOG_LEVEL_INF);

#define STACK_SIZE 2048
#define PRIO_Task1 3
#define PRIO_Task2 3

// 1. Define the mutex (static initialization)
K_MUTEX_DEFINE(counter_mutex);

// Shared resource
static int shared_counter = 0;

void t_Task1(void *p1, void *p2, void *p3) {
    LOG_INF("Task1 started");
    
    for (int i = 0; i < 10; i++) {
        // 2. Lock the mutex (wait forever if busy)
        k_mutex_lock(&counter_mutex, K_FOREVER);
        
        // --- CRITICAL SECTION START ---
        // Only one thread can be here at a time
        shared_counter++;
        LOG_INF("Task1: counter = %d", shared_counter);
        // --- CRITICAL SECTION END ---
        
        // 3. Unlock the mutex (MANDATORY)
        k_mutex_unlock(&counter_mutex);
        
        k_msleep(100);
    }
    
    LOG_INF("Task1 finished");
}

void t_Task2(void *p1, void *p2, void *p3) {
    LOG_INF("Task2 started");
    
    for (int i = 0; i < 10; i++) {
        // 2. Lock the mutex
        k_mutex_lock(&counter_mutex, K_FOREVER);
        
        // --- CRITICAL SECTION START ---
        shared_counter++;
        LOG_INF("Task2: counter = %d", shared_counter);
        // --- CRITICAL SECTION END ---
        
        // 3. Unlock the mutex
        k_mutex_unlock(&counter_mutex);
        
        k_msleep(150);
    }
    
    LOG_INF("Task2 finished");
}

K_THREAD_DEFINE(thread_1, STACK_SIZE, t_Task1, NULL, NULL, NULL, PRIO_Task1, 0, 0);
K_THREAD_DEFINE(thread_2, STACK_SIZE, t_Task2, NULL, NULL, NULL, PRIO_Task2, 0, 0);

int main(void) {
    LOG_INF("Main: Starting mutex example");
    LOG_INF("Expected final counter: 20");
    
    // Wait for threads to finish
    k_sleep(K_SECONDS(5));
    
    LOG_INF("=== FINAL RESULT ===");
    LOG_INF("Counter: %d", shared_counter);
    LOG_INF("Status: %s", shared_counter == 20 ? "PASS (No race condition)" : "FAIL");
    
    return 0;
}   