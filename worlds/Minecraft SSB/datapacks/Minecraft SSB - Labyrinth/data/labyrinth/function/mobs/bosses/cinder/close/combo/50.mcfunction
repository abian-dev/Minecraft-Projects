## Combo frame 50
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"500","speed":"300","particle":"flame"}
execute rotated ~ 0 positioned ^ ^1 ^ run execute as @a[tag=!Invincible,distance=..9] at @s run function labyrinth:mobs/bosses/cinder/close/combo/finalhit
playsound entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 1 0 1