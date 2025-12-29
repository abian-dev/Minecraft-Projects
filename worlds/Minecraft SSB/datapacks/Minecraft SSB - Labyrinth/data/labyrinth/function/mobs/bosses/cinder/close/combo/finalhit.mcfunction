## At players hit by combo
damage @s 12 bypass:player_attack by @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder]
execute at @s facing entity @e[type=piglin_brute,limit=1,sort=nearest,tag=labyrinth.cinder] feet rotated ~180 0 run function labyrinth:generic/functions/raycast_mode/ignore_entities/start {"length":"50","hitEnd":"tp @s ~ ~ ~","hitBlock":"tp @s ^ ^ ^-1","vfx":"function none"}
particle item{item:{id:redstone_block}} ~ ~1 ~ 0 0 0 0.2 10 force