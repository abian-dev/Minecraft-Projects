## When the Raycast Detects an Approaching Wall
# reset
scoreboard players reset @s labyrinth.generic.z
scoreboard players reset @s labyrinth.generic.dz

# determines bounce using the wall's normal
execute unless block ~0.5 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.z 1
execute unless block ~-0.5 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.z 1
execute unless block ~ ~0.5 ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.dz 1
execute unless block ~ ~-0.5 ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.dz 1
execute unless block ~ ~ ~0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.z 2
execute unless block ~ ~ ~-0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.z 2