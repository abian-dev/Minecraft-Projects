## Initialize summoned soul steal
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["miracles.soul.origin"],Duration:90}

# copy user id
scoreboard players operation @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.soul.origin] user.id = @p[tag=miracles.soul.user] user.id
scoreboard players operation @s user.id = @p[tag=miracles.soul.user] user.id