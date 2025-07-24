## Leaping slash launch function
# get pos
execute store result score @s labyrinth.vec.x run data get entity @s Pos[0] 1000
execute store result score @s labyrinth.vec.y run data get entity @s Pos[1] 1000
execute store result score @s labyrinth.vec.z run data get entity @s Pos[2] 1000

# get point
tp @s ^ ^0.05 ^0.05
execute store result score @s labyrinth.vec.dx run data get entity @p Pos[0] 1000
execute store result score @s labyrinth.vec.dy run data get entity @s Pos[1] 1000
execute store result score @s labyrinth.vec.dz run data get entity @p Pos[2] 1000

# get vector from pos to point
scoreboard players operation @s labyrinth.vec.dx -= @s labyrinth.vec.x
scoreboard players operation @s labyrinth.vec.dy -= @s labyrinth.vec.y
scoreboard players operation @s labyrinth.vec.dz -= @s labyrinth.vec.z

# store vector into motion
execute store result entity @s Motion[0] double 0.0002 run scoreboard players get @s labyrinth.vec.dx
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s labyrinth.vec.dy
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get @s labyrinth.vec.dz

# reset
scoreboard players reset @s labyrinth.vec.x
scoreboard players reset @s labyrinth.vec.y
scoreboard players reset @s labyrinth.vec.z
scoreboard players reset @s labyrinth.vec.dx
scoreboard players reset @s labyrinth.vec.dy
scoreboard players reset @s labyrinth.vec.dz