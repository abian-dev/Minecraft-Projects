## Summons soulmass
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.cinder","labyrinth.cinder.soul"],Duration:200}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.soul] at @s run function labyrinth:mobs/bosses/cinder/range/soulmass/init