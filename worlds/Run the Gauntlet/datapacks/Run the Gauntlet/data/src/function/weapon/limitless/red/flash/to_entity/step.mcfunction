## Raycast detect step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run scoreboard players set @s generic.raycast.step 0
execute positioned ^ ^ ^0.5 run function src:weapon/limitless/red/flash/check_block
execute if score @s generic.raycast.step matches -1 run return run scoreboard players set @s generic.raycast.step 0
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!limitless.red.flash.user,team=!ally] run return run function src:weapon/limitless/red/flash/to_entity/detected

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/limitless/red/flash/to_entity/step