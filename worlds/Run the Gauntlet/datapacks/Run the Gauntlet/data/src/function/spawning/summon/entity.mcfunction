# example call: function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"~ ~ ~"}
## Spawns an entity
$execute positioned $(pos) run execute summon $(entity) run function src:spawning/summon/at_entity {"id":"$(id)"}