function kits:char/saber/slash/end
execute at @s run playsound minecraft:item.mace.smash_ground neutral @a[distance=..20] ~ ~ ~ 3 1 1
execute at @s run playsound minecraft:block.gravel.fall neutral @a[distance=..15] ~ ~ ~ 3 0.9 1
execute at @p[tag=Saber,tag=!SaberExcalibur] run particle minecraft:cloud ~ ~0.2 ~ 2 0 2 0 100 force
execute at @p[tag=Saber,tag=SaberExcalibur] run particle dust{color:[1.000,0.867,0.000],scale:3} ~ ~0.2 ~ 3 0.2 3 0 100 force
execute if entity @p[tag=Saber,tag=!SaberExcalibur] at @s as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/slash/slash3damage
execute if entity @p[tag=Saber,tag=SaberExcalibur] at @s as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/slash/slash3damage
kill @s
