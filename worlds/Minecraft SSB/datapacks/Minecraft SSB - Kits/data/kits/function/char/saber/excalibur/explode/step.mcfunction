## Raycast sword explode step function
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute positioned ^ ^ ^0.5 run function kits:generic/functions/raycast/check_block
execute if score @s kits.raycastTick matches -1 unless score @s kits.timer4 matches 55 run return run function kits:char/saber/excalibur/explode/detonate_big
execute if score @s kits.raycastTick matches 0 if score @s kits.timer4 matches 55 run return run function kits:char/saber/excalibur/explode/detonate_big
execute if score @s kits.raycastTick matches 0 if score @s kits.timer4 matches 50 run return run function kits:char/saber/excalibur/explode/shine
execute if score @s kits.raycastTick matches 0 run return run function kits:char/saber/excalibur/explode/detonate_small

# recursive call
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 0.. positioned ^ ^ ^0.5 run function kits:char/saber/excalibur/explode/step