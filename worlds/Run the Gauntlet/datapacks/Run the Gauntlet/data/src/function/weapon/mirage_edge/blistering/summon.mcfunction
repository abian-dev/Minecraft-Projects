## Summons blistering blade
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","mirageedge.blistering"],Duration:60}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.blistering] at @s run function src:weapon/mirage_edge/blistering/init