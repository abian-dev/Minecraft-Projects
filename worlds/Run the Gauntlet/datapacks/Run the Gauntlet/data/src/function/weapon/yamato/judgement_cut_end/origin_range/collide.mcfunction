## When range raycast collides
# summon origin marker
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["yamato.jce"],Duration:90}

# reset
scoreboard players set @s generic.raycast.step2 0