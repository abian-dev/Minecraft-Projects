## Raycast sword explode step function
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
execute if score @s generic.raycast.step matches -1 unless score @s generic.math matches 55 run return run function src:weapon/excalibur/sword/explode/detonate_big
execute if score @s generic.raycast.step matches 0 if score @s generic.math matches 55 run return run function src:weapon/excalibur/sword/explode/detonate_big
execute if score @s generic.raycast.step matches 0 if score @s generic.math matches 50 run return run function src:weapon/excalibur/sword/explode/shine
execute if score @s generic.raycast.step matches 0 run return run function src:weapon/excalibur/sword/explode/detonate_small

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/excalibur/sword/explode/step