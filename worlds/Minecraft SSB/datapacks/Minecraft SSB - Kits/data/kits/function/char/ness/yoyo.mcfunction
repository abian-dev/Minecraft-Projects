scoreboard players add @s kits.timer 1
tp @s[scores={kits.timer=..10}] ^ ^ ^1
particle crit ~ ~1.3 ~ 0 0 0 0 1 force
execute if entity @s[scores={kits.timer=..10}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ness,tag=!InLabyrinth] at @s run function kits:char/ness/yoyodamage

execute at @p[tag=Ness] as @s[scores={kits.timer=11..}] at @s facing entity @p[tag=Ness] feet run teleport @s ^ ^0.2 ^1
execute if entity @s[scores={kits.timer=11..}] if entity @p[tag=Ness,distance=..1.5] run function kits:char/ness/yoyoretrieve
