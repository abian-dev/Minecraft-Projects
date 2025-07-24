## Slash right frame 7
tp @s ~ ~ ~ facing entity @p
execute rotated ~ 0 positioned ~ ~1.5 ~ run function labyrinth:generic/vfx/slash_crescent/play {"concavity":"300","thickness":"5","accuracy":"40","yaw":"90","pitch":"340","distance":"4","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^3 run execute as @a[distance=..3.5] run function labyrinth:mobs/bosses/cinder/close/slash_right/hit