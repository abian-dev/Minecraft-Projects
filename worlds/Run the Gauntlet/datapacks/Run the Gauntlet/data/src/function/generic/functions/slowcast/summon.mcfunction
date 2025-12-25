# example call: function src:generic/functions/slowcast/summon {"distance":"10","slowcaster":"genericSlowcaster"}
## Slowcast Summon Function
# summon
$tag @s add $(slowcaster)
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["genericFunctions","$(slowcaster)"],Duration:$(distance)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=$(slowcaster)] generic.raycast.dist $(distance)
$tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=$(slowcaster)] ~ ~ ~ ~ ~