schedule clear kits:char/sekiro/chasingslice/ensure
execute if entity @s[tag=!SekiroPostureBroken] run function kits:char/sekiro/enabledeflect
kill @e[type=area_effect_cloud,tag=SekiroChasingSliceDestination]
attribute @s minecraft:gravity modifier remove gravity.chasingslice.sekiro
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 3 1 1
execute positioned ^ ^1.2 ^1 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^1.5 ^ run function kits:generic/vfx/slash_circle/play {"radius":"3","completion":"55","thickness":"1","accuracy":"40","acceleration":"4","speed":"0","pitch":"190","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}

execute positioned ^ ^1.5 ^2.5 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/chasingslice/damage
