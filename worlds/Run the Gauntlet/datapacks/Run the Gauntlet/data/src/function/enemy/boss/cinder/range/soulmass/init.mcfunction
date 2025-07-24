## Initializes summoned soulmass
# find id and launch delay
scoreboard players set @s labyrinth.cd 0
execute store result score @s labyrinth.cdMax run random value 10..30
execute store result score @s labyrinth.math run execute if entity @e[type=area_effect_cloud,distance=..20,tag=labyrinth.cinder.soul]
scoreboard players operation @s labyrinth.cdMax *= @s labyrinth.math