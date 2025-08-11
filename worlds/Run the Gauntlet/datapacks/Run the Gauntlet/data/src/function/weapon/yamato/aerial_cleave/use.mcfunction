## Uses aerial cleave
tag @s add yamato.cleave.user
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..5,tag=!yamato.cleave.user,team=!ally] at @s run function src:weapon/yamato/aerial_cleave/hit
tag @s remove yamato.cleave.user
function src:weapon/yamato/aerial_cleave/dive

# fx
execute rotated ~ 20 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"7","accuracy":"50","yaw":"90","pitch":"90","distance":"5","particle":"dust{color:[0.0,0.8,1.0],scale:1}"}
playsound item.mace.smash_ground_heavy neutral @a[distance=..20] ~ ~ ~ 1 2 1

# reset
scoreboard players set @s weapon.cd 10
scoreboard players remove @s cost.stamina 20
scoreboard players reset @s ability.uses