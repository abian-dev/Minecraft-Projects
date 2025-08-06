## Attract raycast step function
# collision check
execute if score %limitless.blue.attract generic.raycast.step matches 0 run return run tp @s ^ ^ ^
execute positioned ^ ^ ^0.5 run function src:weapon/limitless/blue/attract/check_block
execute if score %limitless.blue.attract generic.raycast.step matches -1 run return run tp @s ^ ^ ^
execute if entity @p[distance=..2,tag=limitless.blue.attract.user] run return run tp @s ^ ^ ^

# recursive call
scoreboard players remove %limitless.blue.attract generic.raycast.step 1
execute if score %limitless.blue.attract generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/blue/attract/step