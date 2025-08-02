## Slowcast step function
# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/mirage_edge/blistering/collide
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!mirageedge.blistering.user,team=!ally] run return run function src:weapon/mirage_edge/blistering/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/mirage_edge/blistering/step