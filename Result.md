[00:00:00.000,000] <inf> homework: === L3 Debounce Bonus: Burst events + k_work_reschedule ===
[00:00:00.000,000] <inf> homework: Sensor fires bursts of 5 events within ~20ms, debounce delay=30ms
[00:00:00.000,000] <inf> homework: Expect 1 handler call per burst (2 bursts total)
[00:00:00.000,000] <inf> homework: Run this and confirm burst events collapse into single handler calls.
[00:00:00.004,000] <inf> homework: [SENSOR] burst=0 event 0  tick=4
[00:00:00.004,000] <inf> homework: [DEBOUNCE] rescheduled  tick=4
[00:00:00.008,000] <inf> homework: [SENSOR] burst=0 event 1  tick=8
[00:00:00.008,000] <inf> homework: [DEBOUNCE] rescheduled  tick=8
[00:00:00.012,000] <inf> homework: [SENSOR] burst=0 event 2  tick=12
[00:00:00.012,000] <inf> homework: [DEBOUNCE] rescheduled  tick=12
[00:00:00.016,000] <inf> homework: [SENSOR] burst=0 event 3  tick=16
[00:00:00.016,000] <inf> homework: [DEBOUNCE] rescheduled  tick=16
[00:00:00.020,000] <inf> homework: [SENSOR] burst=0 event 4  tick=20
[00:00:00.020,000] <inf> homework: [DEBOUNCE] rescheduled  tick=20
[00:00:00.050,000] <inf> homework: [HANDLER] Processed burst  total=1  tick=50 

[00:00:00.224,000] <inf> homework: [SENSOR] burst=1 event 0  tick=224
[00:00:00.224,000] <inf> homework: [DEBOUNCE] rescheduled  tick=224
[00:00:00.228,000] <inf> homework: [SENSOR] burst=1 event 1  tick=228
[00:00:00.228,000] <inf> homework: [DEBOUNCE] rescheduled  tick=228
[00:00:00.233,000] <inf> homework: [SENSOR] burst=1 event 2  tick=233
[00:00:00.233,000] <inf> homework: [DEBOUNCE] rescheduled  tick=233
[00:00:00.237,000] <inf> homework: [SENSOR] burst=1 event 3  tick=237
[00:00:00.237,000] <inf> homework: [DEBOUNCE] rescheduled  tick=237
[00:00:00.241,000] <inf> homework: [SENSOR] burst=1 event 4  tick=241
[00:00:00.241,000] <inf> homework: [DEBOUNCE] rescheduled  tick=241
[00:00:00.271,000] <inf> homework: [HANDLER] Processed burst  total=2  tick=271 