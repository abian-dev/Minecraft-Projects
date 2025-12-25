## Initialize summoned round trip
scoreboard players set @s generic.raycast.dist 8
execute rotated as @p[tag=mirageedge.roundtrip.user] run tp @s ~ ~ ~ ~ 0

# mark original rotation
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["mirageedge.roundtrip.origin"],Duration:10}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.roundtrip.origin] @s