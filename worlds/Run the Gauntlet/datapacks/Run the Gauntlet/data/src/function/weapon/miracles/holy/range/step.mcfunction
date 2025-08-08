## Range raycast step function
# collision check
execute if score @s generic.raycast.step matches 0 run return run function src:weapon/miracles/holy/range/collide
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/miracles/holy/range/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:weapon/miracles/holy/range/step