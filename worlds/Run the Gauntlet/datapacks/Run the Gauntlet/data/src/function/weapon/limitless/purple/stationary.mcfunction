## Runs purple stationary behavior
# follow user
tag @s add limitless.purple.curr
scoreboard players operation %limitless.purple.search user.id = @s user.id
execute as @a[tag=limitless.purple.user] at @s if score @s user.id = %limitless.purple.search user.id as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.purple.curr] positioned ^ ^1.25 ^1.50 run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=area_effect_cloud,tag=limitless.purple.merging] if score @s user.id = %limitless.purple.search user.id run function src:weapon/limitless/purple/vfx/tick
tag @s remove limitless.purple.curr
scoreboard players reset %limitless.purple.search