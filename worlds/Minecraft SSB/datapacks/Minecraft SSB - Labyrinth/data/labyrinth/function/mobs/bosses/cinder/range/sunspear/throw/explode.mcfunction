## Thrown sunspear on explosion
execute as @a[tag=!Invincible,distance=..2] at @s run function labyrinth:mobs/bosses/cinder/range/sunspear/throw/hit
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.lightning_bolt.impact neutral @a[distance=..50] ~ ~ ~ 1 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~ 1 2 1