# example call: function labyrinth:generic/vfx/rotating_vertical/general/play {"speed":"200","duration":"20","vfx":"function"}
## Plays Rotating Vertical - General
# summon
$function labyrinth:generic/vfx/rotating_vertical/general/end with storage minecraft:labyrinth.vfx rotatingVertical.$(id)
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["labyrinth.vfx","vfxRotatingVertical"],Duration:$(duration)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRotatingVertical] labyrinth.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRotatingVertical] ~ ~ ~ ~90 -90

# initialize
$data modify storage minecraft:labyrinth.vfx rotatingVertical.$(id).id set value $(id)
$data modify storage minecraft:labyrinth.vfx rotatingVertical.$(id).vfx set value "$(vfx)"
$scoreboard players set %vfxRotatingVertical.$(id).duration labyrinth.generic.z $(duration)
$scoreboard players set %vfxRotatingVertical.$(id).speed labyrinth.generic.constant $(speed)
$execute store result storage minecraft:labyrinth.vfx rotatingVertical.$(id).speed float 0.1 run scoreboard players get %vfxRotatingVertical.$(id).speed labyrinth.generic.constant