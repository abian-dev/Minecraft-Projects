## Combo frame 7
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"40","yaw":"90","pitch":"40","distance":"7","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^3 run execute as @a[distance=..4] run function labyrinth:mobs/bosses/cinder/close/combo/hit
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1