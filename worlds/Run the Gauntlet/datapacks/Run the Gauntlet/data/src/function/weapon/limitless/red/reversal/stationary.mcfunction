## Runs red stationary behavior
# rotation
execute if entity @s[x_rotation=-90] run function src:weapon/limitless/red/reversal/rot_switch
execute if entity @s[x_rotation=90] run function src:weapon/limitless/red/reversal/rot_switch

execute store result score @s generic.y run data get entity @p[tag=limitless.red.user] Rotation[0] 1000
scoreboard players set @s generic.constant 180
scoreboard players operation @s generic.constant *= @s generic.x
scoreboard players operation @s generic.y += @s generic.constant
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s generic.y

execute if score @s generic.z matches -1 run execute at @s run tp @s ~ ~ ~ ~ ~-20
execute if score @s generic.z matches 1 run execute at @s run tp @s ~ ~ ~ ~ ~20

# vfx
particle dust{color:[1,0,0],scale:1} ^ ^ ^ 0 0 0 0 1 force
execute rotated ~90 ~0 run particle item{item:{id:red_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force
execute rotated ~90 ~180 run particle item{item:{id:red_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force
execute rotated ~90 ~270 run particle item{item:{id:red_stained_glass}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force
execute rotated ~90 ~90 run particle item{item:{id:red_stained_glass}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force

# follow user
scoreboard players operation %limitless.red.search user.id = @s user.id
execute as @a[tag=limitless.red.user] at @s if score @s user.id = %limitless.red.search user.id as @e[type=area_effect_cloud,tag=limitless.red,scores={generic.math=1..}] if score @s user.id = %limitless.red.search user.id positioned ^ ^1.25 ^1.50 run tp @s ~ ~ ~
scoreboard players reset %limitless.red.search