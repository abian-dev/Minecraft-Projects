# example call: function src:generic/vfx/expanding_cylinder/play {"accuracy":"200","speed":"200","limit":"5","height":"2000","particle":"flame"}
## Plays Expanding Cylinder
# summon
function src:generic/vfx/expanding_cylinder/end
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxExpandingCylinder"],Duration:$(limit)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingCylinder] ~ ~ ~ 0 0

# initialize
scoreboard players set %vfxExpandingCylinder.0 generic.constant 0
$scoreboard players set %vfxExpandingCylinder.accuracy generic.constant $(accuracy)
$scoreboard players set %vfxExpandingCylinder.speed generic.constant $(speed)
$scoreboard players set %vfxExpandingCylinder.limit generic.constant $(limit)
$scoreboard players set %vfxExpandingCylinder.height generic.constant $(height)
$data modify storage minecraft:vfx expandingCylinder.particle set value "$(particle)"

# calculate inaccuracy
scoreboard players set %vfxExpandingCylinder.inaccuracy generic.constant 10000
scoreboard players operation %vfxExpandingCylinder.inaccuracy generic.constant /= %vfxExpandingCylinder.accuracy generic.constant