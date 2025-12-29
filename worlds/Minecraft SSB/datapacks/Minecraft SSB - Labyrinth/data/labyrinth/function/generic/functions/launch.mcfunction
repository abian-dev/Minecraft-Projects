# example call: function labyrinth:generic/functions/launch {"sVert":"0.1","sHorz":"0.1"}
## Launch Function
# get pos
execute store result score @s labyrinth.generic.x run data get entity @s Pos[0] 1000
execute store result score @s labyrinth.generic.y run data get entity @s Pos[1] 1000
execute store result score @s labyrinth.generic.z run data get entity @s Pos[2] 1000

# get point
$tp @s ^ ^$(sVert) ^$(sHorz)
execute store result score @s labyrinth.generic.dx run data get entity @s Pos[0] 1000
execute store result score @s labyrinth.generic.dy run data get entity @s Pos[1] 1000
execute store result score @s labyrinth.generic.dz run data get entity @s Pos[2] 1000

# get vector from pos to point
scoreboard players operation @s labyrinth.generic.dx -= @s labyrinth.generic.x
scoreboard players operation @s labyrinth.generic.dy -= @s labyrinth.generic.y
scoreboard players operation @s labyrinth.generic.dz -= @s labyrinth.generic.z

# store vector into motion
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s labyrinth.generic.dx
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s labyrinth.generic.dy
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s labyrinth.generic.dz

# reset
scoreboard players reset @s labyrinth.generic.x
scoreboard players reset @s labyrinth.generic.y
scoreboard players reset @s labyrinth.generic.z
scoreboard players reset @s labyrinth.generic.dx
scoreboard players reset @s labyrinth.generic.dy
scoreboard players reset @s labyrinth.generic.dz