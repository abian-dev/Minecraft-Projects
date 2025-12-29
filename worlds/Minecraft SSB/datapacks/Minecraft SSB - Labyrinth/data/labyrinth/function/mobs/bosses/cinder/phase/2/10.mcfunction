## Phase 2 transition frame 10
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"500","speed":"300","particle":"flame"}
execute as @a[tag=!Invincible,distance=..9] at @s run damage @s 25 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
playsound entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 1 0 1