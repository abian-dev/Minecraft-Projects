execute positioned ^ ^1.5 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"190","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^2 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"190","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^1 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"190","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^1.5 ^2.5 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] at @s run function kits:char/hinako/heavyattack/damage
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 3 0.5 1
