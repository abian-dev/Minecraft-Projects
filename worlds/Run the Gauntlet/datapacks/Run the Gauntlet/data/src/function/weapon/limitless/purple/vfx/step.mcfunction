## Position raycast step function
execute if score @s generic.raycast.step matches 0 run return run tp @s ^ ^ ^

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.1 run function src:weapon/limitless/purple/vfx/step