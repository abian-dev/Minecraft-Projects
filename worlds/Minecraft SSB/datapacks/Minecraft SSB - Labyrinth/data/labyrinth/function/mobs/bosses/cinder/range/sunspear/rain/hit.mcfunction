execute as @a[tag=!Invincible,distance=..2] at @s run damage @s 15 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.lightning_bolt.impact neutral @a[distance=..50] ~ ~ ~ 1 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~ 1 2 1