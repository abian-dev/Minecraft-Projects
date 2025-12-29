## Finds Random Spawn Position
# finding conditions
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.generic.raycast.step -1
execute if score @s kits.generic.raycast.step matches ..0 run function kits:generic/functions/random_pos/found with storage minecraft:kits.genfunc randomPos

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/random_pos/find