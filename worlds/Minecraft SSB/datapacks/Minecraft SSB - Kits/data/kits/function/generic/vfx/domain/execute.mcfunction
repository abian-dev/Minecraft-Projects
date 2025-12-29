# example call: function kits:generic/vfx/domain/play {"accuracy":"300","radius":"1000","speed":"3","particle":"block_marker{block_state:{Name:black_concrete}}"}
## Plays Domain Expansion
# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["kits.vfx","vfxDomain"],Duration:$(accuracy)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] kits.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxDomain] ~ ~ ~ ~90 -90

# initialize
$scoreboard players set %vfxDomain.$(id).accuracy kits.generic.constant $(accuracy)
$scoreboard players set %vfxDomain.$(id).radius kits.generic.constant $(radius)
$scoreboard players set %vfxDomain.$(id).newRadiusStep kits.generic.z -$(radius)
$scoreboard players set %vfxDomain.$(id).speed kits.generic.constant $(speed)
$scoreboard players set %vfxDomain.$(id).10 kits.generic.constant 10
$scoreboard players set %vfxDomain.$(id).2 kits.generic.constant 2
$scoreboard players set %vfxDomain.$(id).-1 kits.generic.constant -1

# calculate inaccuracy
$scoreboard players set %vfxDomain.$(id).inaccuracy kits.generic.constant 100000
$scoreboard players operation %vfxDomain.$(id).inaccuracy kits.generic.constant /= %vfxDomain.$(id).accuracy kits.generic.constant

# calculate step
$scoreboard players operation %vfxDomain.$(id).radiusStep kits.generic.z = %vfxDomain.$(id).radius kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).radiusStep kits.generic.z /= %vfxDomain.$(id).accuracy kits.generic.constant

# store
$execute store result storage minecraft:kits.vfx domain.$(id).accuracy float 0.01 run scoreboard players get %vfxDomain.$(id).accuracy kits.generic.constant
$execute store result storage minecraft:kits.vfx domain.$(id).inaccuracyRot float 0.01 run scoreboard players get %vfxDomain.$(id).inaccuracy kits.generic.constant
$execute store result storage minecraft:kits.vfx domain.$(id).inaccuracyPos float 0.001 run scoreboard players get %vfxDomain.$(id).inaccuracy kits.generic.constant
$execute store result storage minecraft:kits.vfx domain.$(id).radiusStep double 0.01 run scoreboard players get %vfxDomain.$(id).radiusStep kits.generic.z
$execute store result storage minecraft:kits.vfx domain.$(id).circleRadius double 0.01 run scoreboard players get %vfxDomain.$(id).circleRadius kits.generic.z
$data modify storage minecraft:kits.vfx domain.$(id).particle set value "$(particle)"
$data modify storage minecraft:kits.vfx domain.$(id).id set value $(id)