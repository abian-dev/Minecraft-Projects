## Excalibur small explosion
execute as @e[type=!#kits:non_entity,distance=..5,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/excalibur/explode/hit_small

# vfx
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000004 0 force
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000006 0 force
execute rotated ~ -90 run particle item{item:{id:yellow_concrete}} ~ ~ ~ ^ ^ ^1000000 0.0000008 0 force
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force