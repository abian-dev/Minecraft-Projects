## Raycast: Ignore Entities Check Block Collision Function
execute unless block ~ ~ ~0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~ ~ ~-0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.5 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.5 ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.5 ~ ~0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.5 ~ ~0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~0.5 ~ ~-0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1
execute unless block ~-0.5 ~ ~-0.5 #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step -1