## Uses upper slash
tag @s add yamato.upper.user
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..5,tag=!yamato.upper.user,team=!ally] at @s run function src:weapon/yamato/upper_slash/hit
tag @s remove yamato.upper.user
function src:weapon/yamato/upper_slash/launch

# fx
execute at @s rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_circle/play {"radius":"4","completion":"60","thickness":"1","accuracy":"40","acceleration":"0","speed":"20","pitch":"90","particle":"dust{color:[0.0,0.8,1.0],scale:1}"}
execute rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_circle/play {"radius":"4","completion":"60","thickness":"1","accuracy":"40","acceleration":"0","speed":"20","pitch":"90","particle":"dust{color:[0.0,0.8,1.0],scale:1}"}
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 0 1

# reset
scoreboard players set @s weapon.cd 10
scoreboard players remove @s cost.stamina 20
scoreboard players reset @s ability.uses