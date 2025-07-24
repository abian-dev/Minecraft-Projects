## Combo frame 50
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"500","speed":"300","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^3 run execute as @a[distance=..5] run function labyrinth:mobs/bosses/cinder/close/combo/hit
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1