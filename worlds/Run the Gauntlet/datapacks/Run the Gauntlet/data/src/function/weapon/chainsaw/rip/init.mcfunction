## Initialize summoned chainsaw rip
execute rotated as @p[tag=chainsaw.rip.user] rotated ~130 0 run tp @s ~ ~1 ~ ~ ~-60
scoreboard players operation @s user.id = @p[tag=chainsaw.rip.user] user.id

# get initial rotation
scoreboard players set %chainsaw.rip.-1 generic.constant -1
execute store result score @s generic.math run data get entity @s Rotation[0]
execute if score @s generic.math matches ..0 run scoreboard players operation @s generic.math *= %chainsaw.rip.-1 generic.constant
scoreboard players reset %chainsaw.rip.-1

# get final rotation
scoreboard players operation @s generic.constant = @s generic.math
scoreboard players add @s generic.constant 200