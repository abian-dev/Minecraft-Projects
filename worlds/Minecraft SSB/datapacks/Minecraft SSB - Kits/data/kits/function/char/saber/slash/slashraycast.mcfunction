scoreboard players add @s kits.raycastTick 1
particle dust{color:[1.000,1.000,1.000],scale:0.5} ~ ~1 ~ 0.25 0.25 0.25 1 10 force
execute as @s[scores={kits.raycastTick=0..6}] run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth,tag=!SaberSlashDmg] at @s run function kits:char/saber/slash/damage

execute as @s[scores={kits.raycastTick=..7}] positioned ^ ^ ^0.5 run function kits:char/saber/slash/slashraycast
