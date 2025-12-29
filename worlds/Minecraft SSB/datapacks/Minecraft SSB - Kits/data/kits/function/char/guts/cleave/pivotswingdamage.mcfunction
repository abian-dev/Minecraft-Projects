effect give @s minecraft:slowness 2 3 true
effect give @s minecraft:weakness 2 0 true
particle item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.25 30 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 10 0 1
