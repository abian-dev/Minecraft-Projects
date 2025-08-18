## Excalibur small explosion
execute as @e[type=!#src:non_entity,distance=..5,tag=!excalibur.sword.user,team=!ally] at @s run function src:weapon/excalibur/sword/explode/hit_small

# vfx
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000006 0 force
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000008 0 force
particle flash ~ ~ ~ 0 0 0 0 1 force