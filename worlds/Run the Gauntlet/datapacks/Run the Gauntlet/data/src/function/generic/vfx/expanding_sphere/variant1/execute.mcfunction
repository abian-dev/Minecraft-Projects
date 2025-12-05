# example call: function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"200","limit":"5","particle":"flame"}
## Plays Expanding Sphere - Variant 1
# summon
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["vfx","vfxExpandingSphere"],Duration:$(limit)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere] generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere] ~ ~ ~ 0 -90

# initialize
$scoreboard players set %vfxExpandingSphere.$(id).accuracy generic.constant $(accuracy)
$scoreboard players set %vfxExpandingSphere.$(id).speed generic.constant $(speed)
$scoreboard players set %vfxExpandingSphere.$(id).limit generic.constant $(limit)
$data modify storage minecraft:vfx expandingSphere.$(id).particle set value "$(particle)"
$data modify storage minecraft:vfx expandingSphere.$(id).id set value $(id)