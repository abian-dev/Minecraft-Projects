## Uses attract
tag @s add limitless.blue.attract.user
execute rotated ~ 0 positioned ^ ^1 ^10 as @e[type=!#src:non_entity,distance=..10,tag=!limitless.blue.attract.user,team=!ally] at @s run function src:weapon/limitless/blue/attract/hit
tag @s remove limitless.blue.attract.user

# fx
execute rotated ~ 0 positioned ^ ^1 ^10 run function src:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"1000","speed":"200","particle":"soul_fire_flame"}
execute rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"200","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"3","particle":"dust{color:[0.0,0.8,1.0],scale:0.5}"}
playsound entity.illusioner.prepare_mirror neutral @a[distance=..20] ~ ~ ~ 2 2 1

# reset
scoreboard players set @s weapon.cd 5
scoreboard players remove @s cost.energy 30
scoreboard players reset @s in.sequence