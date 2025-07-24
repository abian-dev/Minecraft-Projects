## Merges data to summoned spawner
# storages
$data modify storage spawning spawner.$(spawnerID).detectVert set value $(detectVert)
$data modify storage spawning spawner.$(spawnerID).detectHorz set value $(detectHorz)
#data modify storage spawning spawner.$(spawnerID).spawnDelay set value $(spawnDelay)
$data modify storage spawning spawner.$(spawnerID).spawnRadius set value $(spawnRadius)
#data modify storage spawning spawner.$(spawnerID).entityLimit set value $(entityLimit)
$data modify storage spawning spawner.$(spawnerID).entity set value "$(entity)"
$data modify storage spawning spawner.$(spawnerID).entityNum set value $(entityNum)
$data modify storage spawning spawner.$(spawnerID).entityID set value $(entityID)
$data modify storage spawning spawner.$(spawnerID).spawnerID set value $(spawnerID)

# scores
scoreboard players set @s spawning.cd 0
$scoreboard players set @s spawning.cdMax $(spawnDelay)
scoreboard players set @s spawning.entity 0
$scoreboard players set @s spawning.entityMax $(entityLimit)
$scoreboard players set @s spawning.spawner.id $(spawnerID)