## Smash frame 7
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.launchEnd] feet run tp @s ~ ~ ~ ~ ~
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/slash_crescent/play {"concavity":"300","thickness":"5","accuracy":"40","yaw":"90","pitch":"90","distance":"4","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^2 run execute as @a[tag=!Invincible,distance=..2] run function labyrinth:mobs/bosses/cinder/close/smash/hit