## When range raycast collides
# summon roll end marker
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["clothes.roll"],Duration:20}
scoreboard players operation @e[type=area_effect_cloud,distance=..2,limit=1,sort=nearest,tag=clothes.roll] user.id = @s user.id

# reset
scoreboard players set @s generic.raycast.step 0