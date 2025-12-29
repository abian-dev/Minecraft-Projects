## Raycast Check Block Collision Function
execute unless block ~ ~ ~0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~ ~ ~-0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.25 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.25 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.25 ~ ~0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.25 ~ ~0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.25 ~ ~-0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.25 ~ ~-0.25 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1