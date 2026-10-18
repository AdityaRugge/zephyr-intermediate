*** Booting Zephyr OS build v4.4.0 ***
[00:00:00.000,000] <inf> sensor_pipeline: === Producer/consumer pipeline ===
[00:00:00.100,000] <inf> sensor_pipeline: [PRODUCER] queued value=20 tick=100 queue=0/4
[00:00:00.200,000] <inf> sensor_pipeline: [PRODUCER] queued value=21 tick=200 queue=1/4
[00:00:00.300,000] <inf> sensor_pipeline: [PRODUCER] queued value=22 tick=300 queue=2/4
[00:00:00.400,000] <inf> sensor_pipeline: [PRODUCER] queued value=23 tick=400 queue=3/4
[00:00:00.500,000] <inf> sensor_pipeline: [PRODUCER] queued value=24 tick=500 queue=4/4
[00:00:01.000,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:01.600,000] <inf> sensor_pipeline: [CONSUMER] value=20 tick=100 queue=4/4
[00:00:01.600,000] <inf> sensor_pipeline: [PRODUCER] queued value=25 tick=600 queue=4/4
[00:00:02.600,000] <err> sensor_pipeline: [TASK_WDT] producer timed out (channel 0)
[00:00:03.100,000] <inf> sensor_pipeline: [CONSUMER] value=21 tick=200 queue=4/4
[00:00:03.100,000] <inf> sensor_pipeline: [PRODUCER] queued value=26 tick=1700 queue=4/4
[00:00:04.100,000] <err> sensor_pipeline: [TASK_WDT] producer timed out (channel 0)
[00:00:04.600,000] <inf> sensor_pipeline: [CONSUMER] value=22 tick=300 queue=4/4
[00:00:04.600,000] <inf> sensor_pipeline: [PRODUCER] queued value=27 tick=3200 queue=4/4
[00:00:05.600,000] <err> sensor_pipeline: [TASK_WDT] producer timed out (channel 0)
[00:00:06.100,000] <inf> sensor_pipeline: [CONSUMER] value=23 tick=400 queue=4/4
[00:00:06.100,000] <inf> sensor_pipeline: [PRODUCER] queued value=28 tick=4700 queue=4/4
[00:00:07.100,000] <err> sensor_pipeline: [TASK_WDT] producer timed out (channel 0)
[00:00:07.600,000] <inf> sensor_pipeline: [CONSUMER] value=24 tick=500 queue=4/4
[00:00:07.600,000] <inf> sensor_pipeline: [PRODUCER] queued value=29 tick=6200 queue=4/4
[00:00:08.600,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:09.100,000] <inf> sensor_pipeline: [CONSUMER] value=25 tick=600 queue=4/4
[00:00:10.100,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:10.600,000] <inf> sensor_pipeline: [CONSUMER] value=26 tick=1700 queue=3/4
[00:00:11.601,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:12.101,000] <inf> sensor_pipeline: [CONSUMER] value=27 tick=3200 queue=2/4
[00:00:13.101,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:13.601,000] <inf> sensor_pipeline: [CONSUMER] value=28 tick=4700 queue=1/4
[00:00:14.601,000] <err> sensor_pipeline: [TASK_WDT] consumer timed out (channel 1)
[00:00:15.101,000] <inf> sensor_pipeline: [CONSUMER] value=29 tick=6200 queue=0/4
[00:00:15.101,000] <inf> sensor_pipeline: Pipeline complete