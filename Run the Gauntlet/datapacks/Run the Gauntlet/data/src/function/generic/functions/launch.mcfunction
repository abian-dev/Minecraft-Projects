# example call: function src:generic/functions/launch {"sVert":"0.1","sHorz":"0.1"}
## Launch Function
# get pos
execute store result score @s generic.x run data get entity @s Pos[0] 1000
execute store result score @s generic.y run data get entity @s Pos[1] 1000
execute store result score @s generic.z run data get entity @s Pos[2] 1000

# get point
$tp @s ^ ^$(sVert) ^$(sHorz)
execute store result score @s generic.dx run data get entity @s Pos[0] 1000
execute store result score @s generic.dy run data get entity @s Pos[1] 1000
execute store result score @s generic.dz run data get entity @s Pos[2] 1000

# get vector from pos to point
scoreboard players operation @s generic.dx -= @s generic.x
scoreboard players operation @s generic.dy -= @s generic.y
scoreboard players operation @s generic.dz -= @s generic.z

# store vector into motion
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s generic.dx
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s generic.dy
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s generic.dz

# reset
scoreboard players reset @s generic.x
scoreboard players reset @s generic.y
scoreboard players reset @s generic.z
scoreboard players reset @s generic.dx
scoreboard players reset @s generic.dy
scoreboard players reset @s generic.dz