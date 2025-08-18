## Excalibur big explosion
execute as @e[type=!#src:non_entity,distance=..10,tag=!excalibur.sword.user,team=!ally] at @s run function src:weapon/excalibur/sword/explode/hit_big
scoreboard players set @s generic.math 55

# fx
execute positioned ~ ~5.0 ~ if block ~ ~ ~ #src:passable run function src:generic/functions/random_pos/start {"itt":"10","yaw":"180","pitch":"45","distMin":"15","distMax":"20","atPos":"function src:weapon/excalibur/sword/light/summon_sigil"}
execute rotated ~ 0 positioned ~ ~-1.0 ~ run function src:generic/vfx/expanding_cylinder/play {"accuracy":"150","speed":"100","limit":"4","height":"3000","particle":"dust{color:[1.0,1.0,0.0],scale:1.5}"}
execute rotated ~ 0 positioned ~ ~-1.0 ~ run function src:weapon/excalibur/sword/explode/vfx_shockwave
playsound entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 2 0 1