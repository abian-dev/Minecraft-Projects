## Slowcast step function
# vfx
particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/limitless/red/reversal/collide
execute if entity @s[tag=limitless.red.flash] if entity @e[type=!#src:non_entity,distance=..2,tag=!limitless.red.user,team=!ally] run function src:weapon/limitless/red/flash/projectile/collide
execute unless entity @s[tag=limitless.red.flash] if entity @e[type=!#src:non_entity,distance=..2,tag=!limitless.red.user,team=!ally] run return run function src:weapon/limitless/red/reversal/collide
execute unless entity @s[tag=limitless.red.flash] if entity @e[type=area_effect_cloud,distance=..4,tag=limitless.blue] run return run function src:weapon/limitless/purple/explode/use {"userFilter":"limitless.red.user","mergedWith":"limitless.blue"}

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/limitless/red/reversal/step