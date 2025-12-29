playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 10 2 1
particle block{block_state:"minecraft:dirt"} ~ ~0.25 ~ 2 0 2 1 50 force
execute at @s positioned ~ ~1 ~ run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"55","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"190","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^1.25 ^2.5 run execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth] at @s run damage @s 2 bypass:player_attack by @p[tag=Kirito]
schedule function kits:char/kirito/stabstart 7t append
scoreboard players set @s kits.ability2CD 0
