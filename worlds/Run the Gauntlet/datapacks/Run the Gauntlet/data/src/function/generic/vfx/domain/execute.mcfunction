# example call: function src:generic/vfx/domain/play {"accuracy":"300","radius":"1000","speed":"3","particle":"block_marker{block_state:{Name:black_concrete}}"}
## Plays Domain Expansion
# summon
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxDomain"],Duration:$(accuracy)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxDomain.$(id).accuracy generic.constant $(accuracy)
$scoreboard players set %vfxDomain.$(id).radius generic.constant $(radius)
$scoreboard players set %vfxDomain.$(id).newRadiusStep generic.z -$(radius)
$scoreboard players set %vfxDomain.$(id).speed generic.constant $(speed)
$scoreboard players set %vfxDomain.$(id).10 generic.constant 10
$scoreboard players set %vfxDomain.$(id).2 generic.constant 2
$scoreboard players set %vfxDomain.$(id).-1 generic.constant -1

# calculate inaccuracy
$scoreboard players set %vfxDomain.$(id).inaccuracy generic.constant 100000
$scoreboard players operation %vfxDomain.$(id).inaccuracy generic.constant /= %vfxDomain.$(id).accuracy generic.constant

# calculate step
$scoreboard players operation %vfxDomain.$(id).radiusStep generic.z = %vfxDomain.$(id).radius generic.constant
$scoreboard players operation %vfxDomain.$(id).radiusStep generic.z /= %vfxDomain.$(id).accuracy generic.constant

# store
$execute store result storage minecraft:vfx domain.$(id).accuracy float 0.01 run scoreboard players get %vfxDomain.$(id).accuracy generic.constant
$execute store result storage minecraft:vfx domain.$(id).inaccuracyRot float 0.01 run scoreboard players get %vfxDomain.$(id).inaccuracy generic.constant
$execute store result storage minecraft:vfx domain.$(id).inaccuracyPos float 0.001 run scoreboard players get %vfxDomain.$(id).inaccuracy generic.constant
$execute store result storage minecraft:vfx domain.$(id).radiusStep double 0.01 run scoreboard players get %vfxDomain.$(id).radiusStep generic.z
$execute store result storage minecraft:vfx domain.$(id).circleRadius double 0.01 run scoreboard players get %vfxDomain.$(id).circleRadius generic.z
$data modify storage minecraft:vfx domain.$(id).particle set value "$(particle)"
$data modify storage minecraft:vfx domain.$(id).id set value $(id)