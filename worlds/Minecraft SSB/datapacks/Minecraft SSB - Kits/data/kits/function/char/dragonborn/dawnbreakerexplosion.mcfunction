execute positioned ~ ~1 ~ run function kits:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"500","speed":"600","particle":"soul_fire_flame"}
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:block.respawn_anchor.deplete neutral @a[distance=..50] ~ ~ ~ 3 1 1
execute as @e[distance=..12,type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Dragonborn] at @s run function kits:char/dragonborn/dawnbreakerdamage
