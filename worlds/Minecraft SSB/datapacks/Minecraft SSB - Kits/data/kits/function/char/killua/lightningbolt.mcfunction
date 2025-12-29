summon area_effect_cloud ^ ^ ^1.5 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["KilluaThunder"]}
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 3 1 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
scoreboard players set @s kits.timer3 0
