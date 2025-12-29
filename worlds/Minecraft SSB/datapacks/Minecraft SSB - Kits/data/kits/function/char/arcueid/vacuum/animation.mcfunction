execute at @s run tp @s ~ ~ ~ ~20 ~
particle dust{color:[1.000,0.000,0.502],scale:1} ^ ^1 ^2 0 0 0 0 10 force
particle dust{color:[1.000,0.000,0.502],scale:1} ^ ^1 ^-1 0 0 0 0 10 force
execute as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @e[type=area_effect_cloud,tag=ArcueidVacuum,limit=1,sort=nearest] from @p[tag=Arcueid]
execute as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run execute as @p[tag=Arcueid] run function kits:char/arcueid/marblephantasm/magiccircuit {magic:1}
execute as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Arcueid,tag=!InLabyrinth] at @s run playsound minecraft:entity.breeze.hurt neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
