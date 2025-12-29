## Initialize Scatter Slash
# number of slashes
$scoreboard players set @s labyrinth.generic.dz $(slashNum)

# original pos
execute store result score @s labyrinth.generic.x run data get entity @s Pos[0] 100
execute store result score @s labyrinth.generic.y run data get entity @s Pos[1] 100
execute store result score @s labyrinth.generic.z run data get entity @s Pos[2] 100