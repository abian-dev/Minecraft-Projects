# example call: function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"200","limit":"5","particle":"flame"}
## Plays Expanding Sphere - Variant 1
# summon
function src:generic/vfx/expanding_sphere/variant1/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxExpandingSphere"],Duration:$(limit)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere] ~ ~ ~ 0 -90

# initialize
$scoreboard players set %vfxExpandingSphere.accuracy generic.constant $(accuracy)
$scoreboard players set %vfxExpandingSphere.speed generic.constant $(speed)
$scoreboard players set %vfxExpandingSphere.limit generic.constant $(limit)
$data modify storage minecraft:vfx expandingSphere.particle set value "$(particle)"