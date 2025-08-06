## Raycast step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run function src:weapon/limitless/red/flash/end
execute positioned ^ ^ ^0.5 run function src:weapon/limitless/red/flash/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/limitless/red/flash/end

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/red/flash/step