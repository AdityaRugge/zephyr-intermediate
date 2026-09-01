## Real-Time Timing & Drift Note

The observed millisecond drift in loop timestamps (e.g., `200` → `201` → `202`) is **expected behavior** in Zephyr when using relative delays like `k_msleep()`.

### Causes
1.  **Tick Rounding:** Zephyr is a tick-based RTOS. `k_msleep()` guarantees a sleep of *at least* the specified duration, rounding up to the next system tick boundary. Small rounding errors accumulate over time. 
2.  **Scheduling Overhead:** Context switching and interrupt latency add microseconds of delay per cycle.
3.  **Blocking I/O:** The `printk()` function is synchronous. If the UART/USB transmission is slow, it delays the start of the next sleep cycle, compounding the drift.

### Recommendation for Precision
For stable periodic tasks without accumulating drift, use **absolute timeouts** instead of relative sleeps.  This resets the timing error on every cycle:

Example:

```c
// Drifts over time (relative)
while (1) {
    do_work();
    k_msleep(200);
}

// Stable timing (absolute)
int64_t next_tick = k_uptime_get() + 200;
while (1) {
    do_work();
    k_sleep(K_TIMEOUT_ABS_MS(next_tick));
    next_tick += 200;
}
```

## Key Concept: `k_yield()` vs `k_sleep()`

This project demonstrates the difference between the **Waiting** (blocked) and **Ready** (runnable) thread states in Zephyr.

### Comparison

| Feature | `k_sleep()` | `k_yield()` |
| --- | --- | --- |
| Thread state | Moves thread to **Waiting** (blocked) | Keeps thread **Ready** (runnable) |
| Duration | Sleeps for a specified time (or until an absolute time) | Yields CPU once immediately |
| Preemption | Cannot run until timer expires | Can be preempted immediately by higher-priority threads |
| Scheduler action | Removes thread from ready queue | Re-orders thread in ready queue (lets others run first) |
| If no other thread is ready | N/A — waits until timer expires | The yielding thread may run again immediately |
| Use case | Periodic tasks, delays, power saving | Cooperative multitasking and long computations where you want to let others run |
| Zephyr API | `k_sleep(k_timeout_t timeout)` | `k_yield(void)` |

### Code examples

#### Using `k_sleep()` (blocking)

The thread is removed from the scheduler until the timer expires:

```c
while (1) {
    do_busy_work();
    k_msleep(100); // Thread enters WAITING state
}
```

#### Using `k_yield()` (cooperative)

The thread yields the CPU but remains runnable; the scheduler can run other ready threads immediately:

```c
while (1) {
    do_busy_work();
    k_yield(); // Thread becomes READY, scheduler may pick another thread
}
```

When to use which:
- Use `k_sleep()` when you need a delay or periodic execution (e.g., sensor reading every 100 ms).
- Use `k_yield()` in cooperative threads to allow preemptive threads to run or to let other ready threads execute during long computations.

## Workqueue vs Threads
Workqueue = sequential (jobs wait their turn) Threads = parallel (jobs run at the same time)


### Task 3 Concept:

A simple analogy that maps directly onto what your code does.

**The elevator door example**

Think about an elevator door with a "close" timer:

- Someone presses the button, and the door starts a 30-second countdown to close.
- But if another person walks up and presses the button again *before* those 30 seconds are up, the door doesn't close — the countdown **resets** to a fresh 30 seconds.
- This keeps happening as long as people keep walking in. The door only actually closes once **30 seconds have passed since the *last* person pressed the button** — not the first one.

If 5 people walk in one after another within 20 seconds, the elevator doesn't process "5 separate close events." It just waits until the group is done, then closes **once**.

**Mapping that to your code:**

| Elevator | Your code |
|---|---|
| Person presses button | `sensor_sim_fn` logs a `[SENSOR]` event |
| "Start/reset the 30s countdown" | `k_work_reschedule(&sensor_work, K_MSEC(30))` |
| Door finally closes | `sensor_handler()` runs, logs `[HANDLER]` |
| 5 people within 20s | Your burst of 5 sensor events within ~20ms |
| Door closes once, not 5 times | Handler runs once per burst, not once per event |

Every time `k_work_reschedule()` is called, it cancels the previous pending timer and starts a new 30ms one — exactly like the door's countdown resetting. Since your 5 events are only ~4ms apart, each new event resets the timer before the old one can expire. Only after the *last* event in the burst does the 30ms timer finally survive long enough to fire — which is exactly why your handler ran at tick 50 (20 + 30) and tick 271 (241 + 30), not after every single event.

**Why this matters in real embedded systems:** this is the same pattern used for debouncing a physical button press (a mechanical switch "bounces" and fires multiple electrical signals in a few milliseconds even though the human only pressed it once), or a search box that waits until you stop typing before firing an API call instead of firing on every keystroke. Same idea: collapse a noisy burst of triggers into a single meaningful action.