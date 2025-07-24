## Finds random spawn position
# finding conditions
execute unless block ~ ~ ~ #src:passable run scoreboard players set @s generic.math -1
execute if score @s generic.math matches ..0 run function src:spawning/spawner/random_spawn/found with storage spawning spawning.marker.randomPos

# recursive call
scoreboard players remove @s generic.math 1
execute if score @s generic.math matches 0.. positioned ^ ^ ^0.5 run function src:spawning/spawner/random_spawn/find