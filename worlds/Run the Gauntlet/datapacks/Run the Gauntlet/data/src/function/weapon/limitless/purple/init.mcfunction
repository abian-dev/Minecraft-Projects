## Initialize summoned purple
execute rotated as @p[tag=limitless.purple.user] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s generic.raycast.dist 30

# summon red and blue
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.purple.merging","limitless.purple.red"],Duration:50}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.purple.merging","limitless.purple.blue"],Duration:50}
execute as @e[type=area_effect_cloud,tag=limitless.purple.merging,limit=2,sort=nearest] at @s run function src:weapon/limitless/purple/vfx/init

# copy user id
scoreboard players operation @s user.id = @p[tag=limitless.purple.user] user.id

# launch time
scoreboard players set @s generic.math 40