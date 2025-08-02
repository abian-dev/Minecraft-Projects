## Raycast detect step function
# collision check
execute if score @s generic.raycast.step2 matches 0 run return run scoreboard players set @s generic.raycast.step 0
execute positioned ^ ^ ^0.5 run function src:armor/berserker/dash/check_block
execute if score @s generic.raycast.step2 matches -1 run return run scoreboard players set @s generic.raycast.step 0
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!berserker.dash.user,team=!ally] run return run function src:armor/berserker/dash/to_entity/detected

# recursive call
scoreboard players remove @s generic.raycast.step2 1
execute if score @s generic.raycast.step2 matches 0.. positioned ^ ^ ^0.5 run function src:armor/berserker/dash/to_entity/step