/* Kernel Thread List */
uart:~$ kernel thread list
Scheduler: 175 since last call
Threads:
 0x200001b8 maintenance
        options: 0x0, priority: 4 timeout: 0
        state: pending, entry: 0x8000651
        stack size 2048, unused 1800, usage 248 / 2048 (12 %)

 0x20000270 control
        options: 0x0, priority: 7 timeout: 0
        state: pending, entry: 0x8000671
        stack size 2048, unused 1760, usage 288 / 2048 (14 %)

*0x20000838 shell_uart
        options: 0x0, priority: 14 timeout: 0
        state: queued, entry: 0x8005561
        stack size 2048, unused 1120, usage 928 / 2048 (45 %)
 
 0x20000338 logging
        options: 0x0, priority: 14 timeout: 0
        state: pending, entry: 0x80017d9
        stack size 768, unused 320, usage 448 / 768 (58 %)

 0x200009c8 idle
        options: 0x1, priority: 15 timeout: 0
        state: , entry: 0x800c711
        stack size 320, unused 200, usage 120 / 320 (37 %)

