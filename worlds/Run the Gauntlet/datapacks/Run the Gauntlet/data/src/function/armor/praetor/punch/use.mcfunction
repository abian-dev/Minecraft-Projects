## Uses blood punch
# aoe damage
tag @s add praetor.punch.user
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..5,tag=!praetor.punch.user,team=!ally] at @s run function src:armor/praetor/punch/hit
tag @s remove praetor.punch.user

# fx
execute rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"7","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"dust{color:[1.5,0.0,0.0],scale:1}"}
execute rotated ~ 0 positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 0 1 force
playsound entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound item.mace.smash_ground_heavy neutral @a[distance=..20] ~ ~ ~ 2 2 1

# reset
scoreboard players reset @s ability.kills
tag @s remove praetor.hasKilled