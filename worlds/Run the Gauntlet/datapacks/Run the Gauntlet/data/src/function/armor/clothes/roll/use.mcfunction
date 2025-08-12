## When roll is used
tag @s add clothes.roll.user
scoreboard players set @s armor.cd 20
scoreboard players remove @s cost.stamina 15

# fx
particle block{block_state:"minecraft:gravel"} ~ ~0.25 ~ 0.5 0.0 0.5 0 40 force
playsound entity.player.small_fall neutral @a[distance=..20] ~ ~ ~ 1 1 1

# find dash direction based on wasd
execute if predicate src:input/forward if predicate src:input/right rotated ~45 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/right if predicate src:input/backward rotated ~135 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/backward if predicate src:input/left rotated ~225 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/left if predicate src:input/forward rotated ~315 0 run return run function src:armor/clothes/roll/range/start

execute if predicate src:input/forward rotated ~ 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/right rotated ~90 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/backward rotated ~180 0 run return run function src:armor/clothes/roll/range/start
execute if predicate src:input/left rotated ~270 0 run return run function src:armor/clothes/roll/range/start