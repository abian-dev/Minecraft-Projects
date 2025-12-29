## Spinning slash frame 10
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/slash_crescent/play {"concavity":"500","thickness":"5","accuracy":"60","yaw":"90","pitch":"355","distance":"6","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^3 run execute as @a[tag=!Invincible,distance=..4] run function labyrinth:mobs/bosses/cinder/range/spinning_slash/hit