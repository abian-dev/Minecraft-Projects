## When dash is used
playsound entity.illusioner.prepare_mirror neutral @a[distance=..10] ~ ~ ~ 1 2 1
scoreboard players add @s armor.cd 20

# find dash direction based on wasd
execute if predicate src:input/forward if predicate src:input/right rotated ~45 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/right if predicate src:input/backward rotated ~135 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/backward if predicate src:input/left rotated ~225 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/left if predicate src:input/forward rotated ~315 0 run return run function src:armor/praetor/dash/start

execute if predicate src:input/forward rotated ~ 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/right rotated ~90 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/backward rotated ~180 0 run return run function src:armor/praetor/dash/start
execute if predicate src:input/left rotated ~270 0 run return run function src:armor/praetor/dash/start

# default case
execute rotated ~ 0 run function src:armor/praetor/dash/start