## Summons heavy rain blade
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","mirageedge.rain"],Duration:60}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.rain] at @s run function src:weapon/mirage_edge/rain/summon/init