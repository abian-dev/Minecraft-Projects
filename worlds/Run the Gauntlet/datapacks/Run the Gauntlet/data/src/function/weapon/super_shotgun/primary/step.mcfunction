## Slowcast step function
# vfx
particle dust{color:[1.0,0.8,0.0],scale:0.3} ~ ~ ~ 0 0 0 0 1 force

# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/super_shotgun/primary/collide
execute if entity @e[type=!#src:non_entity,distance=..2,tag=!supershotgun.pf.user,team=!ally] run return run function src:weapon/super_shotgun/primary/collide

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/super_shotgun/primary/step