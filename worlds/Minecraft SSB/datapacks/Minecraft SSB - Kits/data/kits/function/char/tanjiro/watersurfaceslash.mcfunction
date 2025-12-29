playsound minecraft:ambient.underwater.exit neutral @a[distance=..15] ~ ~ ~ 10 1 1
execute as @e[tag=!Tanjiro,distance=..6,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Tanjiro]
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"0","particle":"dust{color:[0.000,1.000,1.000],scale:1.0}"}
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"0","particle":"splash"}
scoreboard players set @s kits.ability3CD 0
