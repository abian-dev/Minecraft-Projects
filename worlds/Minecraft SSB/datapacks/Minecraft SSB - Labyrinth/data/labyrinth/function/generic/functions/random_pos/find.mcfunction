## Finds Random Spawn Position
# finding conditions
execute unless block ~ ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute if score @s labyrinth.generic.raycast.step matches ..0 run function labyrinth:generic/functions/random_pos/found with storage minecraft:labyrinth.genfunc randomPos

# recursive call
scoreboard players remove @s labyrinth.generic.raycast.step 1
execute if score @s labyrinth.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function labyrinth:generic/functions/random_pos/find