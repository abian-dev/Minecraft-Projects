execute as @p[tag=Noctis] at @s rotated ~-45 0 positioned ~ ~1.2 ~ run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"80","thickness":"2","accuracy":"40","acceleration":"4","speed":"0","pitch":"180","particle":"dust{color:[1.000,1.000,1.000],scale:1.0}"}
execute at @p[tag=Noctis] positioned ~ ~1 ~ as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Noctis]
execute at @p[tag=Noctis] positioned ~ ~1 ~ run playsound minecraft:entity.bee.hurt neutral @a[distance=..20] ~ ~ ~ 3 0.65 1
