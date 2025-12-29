execute at @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] run particle falling_water ~ ~1 ~ 0.4 1 0.4 0 100 force

playsound minecraft:entity.player.splash.high_speed neutral @a[distance=..15] ~ ~ ~ 10 2 1
execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] at @s run effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true
execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"270","particle":"dust{color:[0.000,1.000,1.000],scale:1.0}"}
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"270","particle":"splash"}
scoreboard players set @s kits.ability2CD 0
