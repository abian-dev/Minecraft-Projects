# example call: function src:generic/vfx/domain/play {"accuracy":"300","radius":"1000","speed":"3","particle":"block_marker{block_state:{Name:black_concrete}}"}
## Plays Domain Expansion
# summon
$summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxDomain"],Duration:$(accuracy)}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxDomain.accuracy generic.constant $(accuracy)
$scoreboard players set %vfxDomain.radius generic.constant $(radius)
$scoreboard players set %vfxDomain.newRadiusStep generic.z -$(radius)
$scoreboard players set %vfxDomain.speed generic.constant $(speed)
scoreboard players set %vfxDomain.10 generic.constant 10
scoreboard players set %vfxDomain.2 generic.constant 2
scoreboard players set %vfxDomain.-1 generic.constant -1

# calculate inaccuracy
scoreboard players set %vfxDomain.inaccuracy generic.constant 100000
scoreboard players operation %vfxDomain.inaccuracy generic.constant /= %vfxDomain.accuracy generic.constant

# calculate step
scoreboard players operation %vfxDomain.radiusStep generic.z = %vfxDomain.radius generic.constant
scoreboard players operation %vfxDomain.radiusStep generic.z /= %vfxDomain.accuracy generic.constant

# store
execute store result storage minecraft:vfx domain.accuracy float 0.01 run scoreboard players get %vfxDomain.accuracy generic.constant
execute store result storage minecraft:vfx domain.inaccuracyRot float 0.01 run scoreboard players get %vfxDomain.inaccuracy generic.constant
execute store result storage minecraft:vfx domain.inaccuracyPos float 0.001 run scoreboard players get %vfxDomain.inaccuracy generic.constant
execute store result storage minecraft:vfx domain.radiusStep double 0.01 run scoreboard players get %vfxDomain.radiusStep generic.z
execute store result storage minecraft:vfx domain.circleRadius double 0.01 run scoreboard players get %vfxDomain.circleRadius generic.z
$data modify storage minecraft:vfx domain.particle set value "$(particle)"