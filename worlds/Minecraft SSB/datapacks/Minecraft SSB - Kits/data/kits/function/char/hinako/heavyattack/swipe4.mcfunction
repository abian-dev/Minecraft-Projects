execute positioned ^ ^1.5 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"390","particle":"dust{color:[0.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^2 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"390","particle":"dust{color:[0.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^1 ^0.5 run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"53","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"390","particle":"dust{color:[0.000,1.000,1.000],scale:0.5}"}
execute positioned ^ ^1.5 ^2.5 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] at @s run function kits:char/hinako/heavyattack/damage2
playsound minecraft:block.trial_spawner.ominous_activate neutral @a[distance=..30] ~ ~ ~ 10 0.5 1
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 3 0.5 1

attribute @s minecraft:attack_damage modifier add damage.heavyattack.hinako -20 add_value
attribute @s minecraft:attack_speed modifier add attackspeed.heavyattack.hinako -50 add_value
schedule function kits:char/hinako/heavyattack/end 10t replace
function kits:char/hinako/stamina/use {stamina: 20}
scoreboard players set @s kits.ability1CD 10
scoreboard players set @s kits.timer2 1
