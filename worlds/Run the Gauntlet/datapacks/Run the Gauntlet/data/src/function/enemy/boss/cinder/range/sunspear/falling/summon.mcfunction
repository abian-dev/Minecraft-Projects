## Summons falling sunspear
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.cinder","labyrinth.cinder.sunspearFalling"],Duration:60}
execute positioned ~ ~ ~ as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.sunspearFalling] at @s run function labyrinth:mobs/bosses/cinder/range/sunspear/falling/init