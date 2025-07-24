## Initialize summoned bullet
# slowcast
scoreboard players set @s generic.raycast.dist 4

# spread
execute rotated as @p[tag=supershotgun.pf.user] run tp @s ~ ~1.5 ~ ~ ~
execute store result score @s generic.y run data get entity @s Rotation[0] 100
execute store result score @s generic.x run data get entity @s Rotation[1] 100

execute store result score @s generic.dy run random value -2000..2000
execute store result score @s generic.dx run random value -500..500

scoreboard players operation @s generic.y += @s generic.dy
scoreboard players operation @s generic.x += @s generic.dx

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s generic.y
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s generic.x

execute at @s run tp @s ^ ^ ^0.1