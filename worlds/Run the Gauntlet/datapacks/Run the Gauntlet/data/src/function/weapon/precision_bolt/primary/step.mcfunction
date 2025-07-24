## Slowcast step function
# vfx
particle dust{color:[0.0,1.0,1.0],scale:0.6} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/precision_bolt/primary/collide
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,type=!#src:non_entity,tag=!precisionbolt.pf.user,team=!ally] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run return run function src:weapon/precision_bolt/primary/hit/entity

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/precision_bolt/primary/step