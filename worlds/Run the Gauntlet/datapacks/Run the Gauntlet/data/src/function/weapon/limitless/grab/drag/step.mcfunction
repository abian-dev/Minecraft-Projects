## Drag raycast step function
# collision check
execute if score %limitless.grab.drag generic.raycast.step matches 0 run return run tp @s ^ ^ ^
execute positioned ^ ^ ^0.5 run function src:weapon/limitless/grab/drag/check_block
execute if score %limitless.grab.drag generic.raycast.step matches -1 run return run tp @s ^ ^ ^

# recursive call
scoreboard players remove %limitless.grab.drag generic.raycast.step 1
execute if score %limitless.grab.drag generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/grab/drag/step