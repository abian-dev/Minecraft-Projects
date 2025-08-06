## Trap raycast step function
# collision check
execute if score %limitless.void.trap generic.raycast.step matches 0 run return run tp @s ^ ^ ^
execute positioned ^ ^ ^0.5 run function src:weapon/limitless/void/trap/check_block
execute if score %limitless.void.trap generic.raycast.step matches -1 run return run tp @s ^ ^ ^
execute if entity @e[type=area_effect_cloud,distance=..9,limit=1,sort=nearest,tag=limitless.void] run return run tp @s ^ ^ ^

# recursive call
scoreboard players remove %limitless.void.trap generic.raycast.step 1
execute if score %limitless.void.trap generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/void/trap/step