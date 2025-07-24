## Raycast step function
# collision check
execute if score @s generic.raycast.step2 matches 0 run return run function src:armor/praetor/dash/end
execute positioned ^ ^ ^0.5 run function src:armor/praetor/dash/check_block
execute if score @s generic.raycast.step2 matches -1 run return run function src:armor/praetor/dash/end

# recursive call
scoreboard players remove @s generic.raycast.step2 1
execute if score @s generic.raycast.step2 matches 0.. positioned ^ ^ ^0.5 run function src:armor/praetor/dash/step