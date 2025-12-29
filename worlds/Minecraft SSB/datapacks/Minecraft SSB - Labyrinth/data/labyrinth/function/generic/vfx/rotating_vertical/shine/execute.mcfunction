# example call: function labyrinth:generic/vfx/rotating_vertical/shine/play {"speed":"100","duration":"10","inaccuracy":"100","distance":"20","particle":"electric_spark"}
## Plays Rotating Vertical - Shine
# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["labyrinth.vfx","vfxShine"],Duration:$(duration)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxShine] labyrinth.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxShine] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxShine.$(id).speed labyrinth.generic.constant $(speed)
$scoreboard players set %vfxShine.$(id).inaccuracy labyrinth.generic.constant $(inaccuracy)
$scoreboard players set %vfxShine.$(id).distance labyrinth.generic.constant $(distance)
$scoreboard players set %vfxShine.$(id).duration labyrinth.generic.z $(duration)

# store
$data modify storage minecraft:labyrinth.vfx shine.$(id).id set value $(id)
$data modify storage minecraft:labyrinth.vfx shine.$(id).particle set value "$(particle)"
$execute store result storage minecraft:labyrinth.vfx shine.$(id).speed float 0.1 run scoreboard players get %vfxShine.$(id).speed labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx shine.$(id).inaccuracy float 0.001 run scoreboard players get %vfxShine.$(id).inaccuracy labyrinth.generic.constant