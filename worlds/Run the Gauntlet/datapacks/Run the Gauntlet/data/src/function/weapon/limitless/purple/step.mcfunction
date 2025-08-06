## Slowcast step function
# vfx
particle dust{color:[1.0,0.0,1.0],scale:0.7} ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle dust{color:[1.0,0.5,1.0],scale:0.8} ~ ~ ~ 0.1 0.1 0.1 0 3 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/limitless/purple/end
execute as @e[type=!#src:non_entity,distance=..5,tag=!limitless.purple.user,team=!ally] run function src:weapon/limitless/purple/hit

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/limitless/purple/step