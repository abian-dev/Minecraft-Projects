## Leaping slash frame 7
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.launchEnd] feet run tp @s ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"50","yaw":"90","pitch":"40","distance":"7","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^3 run execute as @a[tag=!Invincible,distance=..3.5] run function labyrinth:mobs/bosses/cinder/range/leaping_slash/hit
playsound entity.ghast.shoot neutral @a[distance=..50] ~ ~ ~ 1 0 1