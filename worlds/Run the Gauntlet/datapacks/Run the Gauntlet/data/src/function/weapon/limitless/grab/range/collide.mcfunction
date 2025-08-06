## When range raycast collides
# summon dash end marker
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.grab"],Duration:20}
scoreboard players operation @e[type=area_effect_cloud,distance=..2,limit=1,sort=nearest,tag=limitless.grab] user.id = @s user.id

# reset
scoreboard players set @s generic.raycast.step 0