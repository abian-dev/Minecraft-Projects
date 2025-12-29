# example call: function kits:generic/vfx/rotating_vertical/shine/play {"speed":"100","duration":"10","inaccuracy":"100","distance":"20","particle":"electric_spark"}
## Plays Rotating Vertical - Shine
# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["kits.vfx","vfxShine"],Duration:$(duration)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxShine] kits.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxShine] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxShine.$(id).speed kits.generic.constant $(speed)
$scoreboard players set %vfxShine.$(id).inaccuracy kits.generic.constant $(inaccuracy)
$scoreboard players set %vfxShine.$(id).distance kits.generic.constant $(distance)
$scoreboard players set %vfxShine.$(id).duration kits.generic.z $(duration)

# store
$data modify storage minecraft:kits.vfx shine.$(id).id set value $(id)
$data modify storage minecraft:kits.vfx shine.$(id).particle set value "$(particle)"
$execute store result storage minecraft:kits.vfx shine.$(id).speed float 0.1 run scoreboard players get %vfxShine.$(id).speed kits.generic.constant
$execute store result storage minecraft:kits.vfx shine.$(id).inaccuracy float 0.001 run scoreboard players get %vfxShine.$(id).inaccuracy kits.generic.constant