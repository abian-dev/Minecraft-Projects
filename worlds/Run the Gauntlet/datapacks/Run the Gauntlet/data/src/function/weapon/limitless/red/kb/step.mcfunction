## Kb raycast step function
# collision check
execute if score %limitless.red.kb generic.raycast.step matches 0 run return run tp @s ^ ^ ^
execute positioned ^ ^ ^-0.5 run function src:weapon/limitless/red/kb/check_block
execute if score %limitless.red.kb generic.raycast.step matches -1 run return run tp @s ^ ^ ^

# recursive call
scoreboard players remove %limitless.red.kb generic.raycast.step 1
execute if score %limitless.red.kb generic.raycast.step matches 0.. positioned ^ ^ ^-0.5 run function src:weapon/limitless/red/kb/step