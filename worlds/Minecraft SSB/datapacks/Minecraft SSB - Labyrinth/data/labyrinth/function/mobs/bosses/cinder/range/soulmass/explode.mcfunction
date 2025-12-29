## Soulmass on explosion
execute as @a[tag=!Invincible,distance=..2] at @s run function labyrinth:mobs/bosses/cinder/range/soulmass/hit
particle soul_fire_flame ~ ~1 ~ 0 0 0 0.2 5 force
playsound block.glass.break neutral @a[distance=..50] ~ ~ ~ 1 0 1
kill @s