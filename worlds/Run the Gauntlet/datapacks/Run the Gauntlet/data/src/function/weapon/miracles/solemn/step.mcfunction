## Range raycast step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run function src:weapon/miracles/solemn/collide
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/miracles/solemn/collide
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!miracles.solemn.user,team=!ally] positioned as @e[type=!#src:non_entity,distance=..2,tag=!miracles.solemn.user,team=!ally,limit=1,sort=nearest] run return run function src:weapon/miracles/solemn/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/miracles/solemn/step