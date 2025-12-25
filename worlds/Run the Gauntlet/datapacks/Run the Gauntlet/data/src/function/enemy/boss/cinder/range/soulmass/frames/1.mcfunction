## Soulmass frame 1
tp @s ~ ~ ~ facing entity @p
execute positioned ~ ~4 ~ run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.cinder.soulmassCast"],Duration:20}
playsound block.beacon.activate neutral @a[distance=..20] ~ ~ ~ 1.5 1 1