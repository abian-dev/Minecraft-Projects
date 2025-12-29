## Raycast golden beam step function
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute if score @s generic.raycast.step matches 0 run return run scoreboard players set @s generic.raycast.step 0
execute as @e[type=!#kits:non_entity,distance=..1.5,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/excalibur/hit

# recursive call
scoreboard players remove @s kits.raycastTick 1
execute if score @s kits.raycastTick matches 0.. positioned ^ ^ ^0.5 run function kits:char/saber/excalibur/step