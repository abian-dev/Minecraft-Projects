## Excalibur big explosion
execute as @e[type=!#kits:non_entity,distance=..12,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/excalibur/explode/hit_big
scoreboard players set @s kits.timer4 55

# fx
execute positioned ~ ~5.0 ~ if block ~ ~ ~ #kits:passable run function kits:generic/functions/random_pos/start {"itt":"10","yaw":"180","pitch":"45","distMin":"15","distMax":"20","atPos":"function kits:char/saber/excalibur/light/summon_sigil"}
execute rotated ~ 0 positioned ~ ~-1.0 ~ run function kits:generic/vfx/expanding_cylinder/play {"accuracy":"120","speed":"100","limit":"8","height":"3000","particle":"dust{color:[1.0,1.0,0.0],scale:1.5}"}
execute rotated ~ 0 positioned ~ ~-1.0 ~ run function kits:char/saber/excalibur/explode/vfx_shockwave
playsound minecraft:entity.generic.explode neutral @a[distance=..40] ~ ~ ~ 2 0 1