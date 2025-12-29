## At players hit by combo
damage @s 7 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
effect give @s slow_falling 1 0 true
effect give @s slowness 1 4 true
effect give @s weakness 1 4 true
execute rotated ~ -90 run function labyrinth:generic/functions/raycast_mode/ignore_entities/start {"length":"3","hitEnd":"tp @s ~ ~ ~","hitBlock":"tp @s ~ ~ ~","vfx":"function none"}
particle item{item:{id:redstone_block}} ~ ~1 ~ 0 0 0 0.2 10 force