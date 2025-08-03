## Falling sunspear on explosion
execute as @a[distance=..2] at @s run function labyrinth:mobs/bosses/cinder/range/sunspear/falling/hit
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5