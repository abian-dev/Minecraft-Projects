damage @s 12 bypass:player_attack by @p[tag=Hinako]
effect give @s minecraft:slowness 1 4 true
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0 50 force
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.5 50 force
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.1 20 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.iron_golem.damage neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 3 0 1