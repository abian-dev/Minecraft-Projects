## Uses aerial rave
tag @s add yamato.rave.user
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..5,tag=!yamato.rave.user,team=!ally] at @s run function src:weapon/yamato/aerial_rave/hit
tag @s remove yamato.rave.user

# fx
scoreboard players add @s ability.uses 1
execute if score @s ability.uses matches 1 rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"300","thickness":"0","accuracy":"50","yaw":"90","pitch":"160","distance":"3","particle":"dust{color:[0.0,0.8,1.0],scale:1}"}
execute if score @s ability.uses matches 2 rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"300","thickness":"0","accuracy":"50","yaw":"90","pitch":"120","distance":"3","particle":"dust{color:[0.0,0.8,1.0],scale:1}"}
execute if score @s ability.uses matches 3 rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_circle/play {"radius":"4","completion":"160","thickness":"0","accuracy":"40","acceleration":"1","speed":"20","pitch":"80","particle":"dust{color:[0.0,0.8,1.0],scale:1.0}"}
execute if score @s ability.uses matches 3.. run scoreboard players reset @s ability.uses

# reset
scoreboard players set @s weapon.cd 5
scoreboard players remove @s cost.stamina 5