## Raycast step function
particle dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~1 ~ 0 0.5 0 0 10 force

# collision check
execute if score @s generic.raycast.step2 matches 0 run return run function src:armor/berserker/dash/end
execute positioned ^ ^ ^0.5 run function src:armor/berserker/dash/check_block
execute if score @s generic.raycast.step2 matches -1 run return run function src:armor/berserker/dash/end

# recursive call
scoreboard players remove @s generic.raycast.step2 1
execute if score @s generic.raycast.step2 matches 0.. positioned ^ ^ ^0.5 run function src:armor/berserker/dash/step