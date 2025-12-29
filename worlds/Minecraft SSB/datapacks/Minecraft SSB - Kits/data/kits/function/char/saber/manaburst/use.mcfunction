function kits:char/saber/mana/consume {mana:25}
effect give @s minecraft:absorption 3 0 true
particle flash{color:[1.000,0.867,0.000,1.00]} ~ ~1 ~ 0 0 0 0 20 normal
execute at @s rotated ~ 90 run function kits:char/saber/manaburst/particles
playsound minecraft:block.trial_spawner.ominous_activate neutral @a[distance=..30] ~ ~ ~ 3 1 1
playsound minecraft:block.trial_spawner.open_shutter neutral @a[distance=..30] ~ ~ ~ 3 0 1
playsound minecraft:block.trial_spawner.spawn_item neutral @a[distance=..30] ~ ~ ~ 3 1 1
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/manaburst/damage
effect give @s minecraft:strength 3 0 true
effect give @s minecraft:resistance 3 0 true