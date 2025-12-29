# example call: function labyrinth:generic/vfx/expanding_cylinder/play {"accuracy":"200","speed":"200","limit":"5","height":"2000","particle":"flame"}
## Plays Expanding Cylinder
# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["labyrinth.vfx","vfxExpandingCylinder"],Duration:$(limit)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingCylinder] labyrinth.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingCylinder] ~ ~ ~ 0 0

# initialize
$scoreboard players set %vfxExpandingCylinder.$(id).0 labyrinth.generic.constant 0
$scoreboard players set %vfxExpandingCylinder.$(id).accuracy labyrinth.generic.constant $(accuracy)
$scoreboard players set %vfxExpandingCylinder.$(id).speed labyrinth.generic.constant $(speed)
$scoreboard players set %vfxExpandingCylinder.$(id).limit labyrinth.generic.constant $(limit)
$scoreboard players set %vfxExpandingCylinder.$(id).height labyrinth.generic.constant $(height)
$data modify storage minecraft:labyrinth.vfx expandingCylinder.$(id).particle set value "$(particle)"
$data modify storage minecraft:labyrinth.vfx expandingCylinder.$(id).id set value $(id)

# calculate inaccuracy
$scoreboard players set %vfxExpandingCylinder.$(id).inaccuracy labyrinth.generic.constant 10000
$scoreboard players operation %vfxExpandingCylinder.$(id).inaccuracy labyrinth.generic.constant /= %vfxExpandingCylinder.$(id).accuracy labyrinth.generic.constant