## Runs purple stationary behavior
# follow user
scoreboard players operation %limitless.purple.search user.id = @s user.id
execute as @a[tag=limitless.purple.user] at @s if score @s user.id = %limitless.purple.search user.id as @e[type=area_effect_cloud,tag=limitless.purple,scores={generic.math=1..}] if score @s user.id = %limitless.purple.search user.id positioned ^ ^1.25 ^1.50 run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=area_effect_cloud,tag=limitless.purple.merging] if score @s user.id = %limitless.purple.search user.id run function src:weapon/limitless/purple/vfx/tick
scoreboard players reset %limitless.purple.search