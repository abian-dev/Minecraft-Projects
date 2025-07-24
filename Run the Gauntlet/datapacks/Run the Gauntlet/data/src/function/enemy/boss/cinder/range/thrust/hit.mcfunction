## At players hit by thrust
damage @s 10 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
particle item{item:{id:redstone_block}} ~ ~1 ~ 0 0 0 0.2 10
playsound entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 1 0 1