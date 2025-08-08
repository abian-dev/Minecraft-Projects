## Dash raycast step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run tp @s ~ ~ ~
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
execute if score @s generic.raycast.step matches -1 if block ~ ~2 ~ #src:passable run return run tp @s ~ ~0.6 ~
execute if score @s generic.raycast.step matches -1 unless block ~ ~2 ~ #src:passable run return run tp @s ~ ~ ~

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:armor/clothes/roll/dash_step