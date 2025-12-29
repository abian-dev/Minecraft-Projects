playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 10 0 1
execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..8,tag=!InLabyrinth] at @s run damage @s 9 bypass:player_attack by @p[tag=Tanjiro]
effect give @e[type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,distance=..8,tag=!InLabyrinth] minecraft:wither 1 9 true
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"0","particle":"dust{color:[1.000,0.502,0.000],scale:1}"}
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"0","particle":"flame"}
execute positioned ~ ~1 ~ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"4","completion":"150","thickness":"1","accuracy":"40","acceleration":"6","speed":"0","pitch":"0","particle":"trial_spawner_detection"}
scoreboard players set @s kits.ability3CD 1
