## Initialize summoned blue
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.blue.origin"],Duration:30}
execute rotated as @p[tag=limitless.blue.user] rotated ~ 0 run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue.origin] ~ ~1 ~ ~ ~
execute rotated as @p[tag=limitless.blue.user] rotated ~ 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players set @s generic.raycast.dist 10

# copy user id
scoreboard players operation @s user.id = @p[tag=limitless.blue.user] user.id