## Raycast golden beam step function
particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute if score @s generic.raycast.step matches 0 run return run scoreboard players set @s generic.raycast.step 0
execute as @e[type=!#src:non_entity,distance=..1.5,tag=!excalibur.sword.user,team=!ally] at @s run function src:weapon/excalibur/sword/hit

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/excalibur/sword/step