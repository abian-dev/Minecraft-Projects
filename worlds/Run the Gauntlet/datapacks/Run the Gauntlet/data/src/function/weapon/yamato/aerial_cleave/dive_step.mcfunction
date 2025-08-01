## Raycast step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run tp @s ~ ~ ~
execute unless block ~ ~-1 ~ #src:passable run scoreboard players set @s generic.raycast.step -1
execute if score @s generic.raycast.step matches -1 run return run tp @s ~ ~ ~

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ~ ~-0.5 ~ run function src:weapon/yamato/aerial_cleave/dive_step