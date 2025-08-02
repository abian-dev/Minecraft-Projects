## When dash is used
tag @s add berserker.dash.user
scoreboard players set @s armor.cd 10

# teleport to facing entity
execute if predicate src:input/forward run function src:armor/berserker/dash/to_entity/start
execute if entity @s[tag=berserker.dash.isFacingEntity] run return run tag @s remove berserker.dash.isFacingEntity

# teleport to ground
execute if predicate src:input/backward if block ~ ~-0.5 ~ #src:passable run return run function src:armor/berserker/dash/to_ground/start

# find dash direction based on wasd
execute if predicate src:input/forward if predicate src:input/right rotated ~45 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/right if predicate src:input/backward rotated ~135 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/backward if predicate src:input/left rotated ~225 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/left if predicate src:input/forward rotated ~315 0 run return run function src:armor/berserker/dash/start

execute if predicate src:input/forward rotated ~ 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/right rotated ~90 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/backward rotated ~180 0 run return run function src:armor/berserker/dash/start
execute if predicate src:input/left rotated ~270 0 run return run function src:armor/berserker/dash/start