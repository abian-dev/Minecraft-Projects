## Slowcast step function
# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run scoreboard players set @s generic.math 10
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!mirageedge.roundtrip.user,team=!ally] run return run scoreboard players set @s generic.math 10

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.roundtrip.origin] positioned ^ ^ ^0.5 run function src:weapon/mirage_edge/round_trip/step