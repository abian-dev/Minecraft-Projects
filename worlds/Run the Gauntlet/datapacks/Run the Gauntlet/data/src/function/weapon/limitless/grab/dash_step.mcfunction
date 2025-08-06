## Dash raycast step function
# vfx
particle dust{color:[0.0,0.75,1.0],scale:0.5} ~ ~1 ~ 0.1 0.1 0.1 0 5 force
particle dust{color:[0.5,1.0,1.0],scale:0.5} ~ ~1 ~ 0.3 0.3 0.3 0 5 force

# collision check
execute if score @s generic.raycast.step matches 0 run return run tp @s ~ ~ ~
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
execute if score @s generic.raycast.step matches -1 if block ~ ~2 ~ #src:passable run return run tp @s ~ ~0.6 ~
execute if score @s generic.raycast.step matches -1 unless block ~ ~2 ~ #src:passable run return run tp @s ~ ~ ~

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/grab/dash_step