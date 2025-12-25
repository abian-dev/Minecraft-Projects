## Summons thrown sword
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["miracles.swords.throw"],Duration:70}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.swords.throw] at @s run function src:weapon/miracles/swords/throw/init