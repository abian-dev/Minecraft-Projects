## Initializes summoned falling sunspears
# find launch delay
scoreboard players set @s labyrinth.cd 0
execute store result score @s labyrinth.cdMax run random value 20..30
execute store result score @s labyrinth.math run execute if entity @e[type=area_effect_cloud,distance=..1,tag=labyrinth.cinder.sunspearFalling]
execute if score @s labyrinth.math matches 1.. run scoreboard players operation @s labyrinth.cdMax *= @s labyrinth.math