## Raycast detect step function
particle dust{color:[0.5,0.5,0.5],scale:1.0} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute if score @s generic.raycast.step matches 0 run return run scoreboard players set @s generic.raycast.step 0
execute if entity @e[type=!#src:non_entity,distance=..1.5,tag=!chainsaw.rip.user,team=!ally] run return run function src:weapon/chainsaw/rip/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/chainsaw/rip/step