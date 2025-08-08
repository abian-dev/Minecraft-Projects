## Summons spiral sword
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["miracles.swords.spiral"],Duration:70}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.swords.spiral] at @s run function src:weapon/miracles/swords/spiral/init_sword