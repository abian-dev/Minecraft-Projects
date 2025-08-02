## Initialize summoned blistering blade
execute rotated as @p[tag=mirageedge.blistering.user] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s generic.raycast.dist 10

# get id
execute store result score @s generic.constant run execute if entity @e[type=area_effect_cloud,distance=..3,tag=mirageedge.blistering]
scoreboard players operation @s user.id = @p[tag=mirageedge.blistering.user] user.id

# launch time
execute store result score @s generic.math run execute if entity @e[type=area_effect_cloud,distance=..3,tag=mirageedge.blistering]
scoreboard players operation @s generic.math += @s generic.math
scoreboard players add @s generic.math 20