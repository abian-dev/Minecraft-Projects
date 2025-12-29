tag @s add TanjiroFiregod
playsound minecraft:entity.generic.burn neutral @a[distance=..50] ~ ~ ~ 10 0.5 1
particle flash{color:[1.000,0.431,0.149,1.00]} ~ ~ ~ 0 0 0 0 10 force
particle minecraft:trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
scoreboard players set @s[tag=TanjiroConstantFlux] kits.timer 1
scoreboard players set @s kits.ability4CD 1
