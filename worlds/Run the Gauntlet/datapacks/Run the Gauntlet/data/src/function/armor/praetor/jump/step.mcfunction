## Raycast step function
# collision check
execute if score @s generic.raycast.step2 matches 0 run return run tp @s ~ ~ ~
execute unless block ~ ~2 ~ #src:passable run scoreboard players set @s generic.raycast.step2 -1
execute if score @s generic.raycast.step2 matches -1 run return run tp @s ~ ~ ~

# recursive call
scoreboard players remove @s generic.raycast.step2 1
execute if score @s generic.raycast.step2 matches 0.. positioned ~ ~0.5 ~ run function src:armor/praetor/jump/step