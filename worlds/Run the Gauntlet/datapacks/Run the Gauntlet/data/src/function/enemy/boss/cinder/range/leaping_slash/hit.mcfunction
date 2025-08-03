## At players hit by leaping slash
damage @s 15 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
particle item{item:{id:redstone_block}} ~ ~1 ~ 0 0 0 0.2 10 force
playsound item.mace.smash_ground neutral @a[distance=..20] ~ ~ ~ 1 0 1