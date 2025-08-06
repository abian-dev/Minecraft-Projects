## Slowcast step function
# vfx
particle dust{color:[0.0,0.75,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
particle dust{color:[0.5,1.0,1.0],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 2 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run scoreboard players set @s generic.math 30
execute as @e[type=!#src:non_entity,distance=..3,tag=!limitless.blue.user,team=!ally] at @s run function src:weapon/limitless/blue/lapse/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/limitless/blue/lapse/step