## Void slash
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..5,tag=!yamato.void.user,team=!ally] at @s run function src:weapon/yamato/void_slash/hit

# fx
execute rotated ~ 0 positioned ~ ~0.9 ~ run function src:generic/vfx/slash_circle/play {"radius":"5","completion":"50","thickness":"0","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"dust{color:[0.0,0.9,1.0],scale:1.0}"}
execute rotated ~ 0 positioned ~ ~1.0 ~ run function src:generic/vfx/slash_circle/play {"radius":"4","completion":"50","thickness":"0","accuracy":"40","acceleration":"0","speed":"10","pitch":"0","particle":"dust{color:[0.0,0.7,1.0],scale:1.0}"}
execute rotated ~ 0 positioned ~ ~1.1 ~ run function src:generic/vfx/slash_circle/play {"radius":"5","completion":"50","thickness":"0","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"dust{color:[0.0,0.9,1.0],scale:1.0}"}
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound item.trident.thunder neutral @a[distance=..20] ~ ~ ~ 1 1 1

# reset
tag @s add yamato.voidslash.curr
execute unless entity @e[type=area_effect_cloud,tag=!yamato.voidslash.curr,tag=yamato.voidslash] run tag @a[tag=yamato.void.user] remove yamato.void.user
kill @s