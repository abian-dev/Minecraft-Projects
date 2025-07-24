## Found random spawn position
# run function at spawn position
$execute if score @s generic.math matches -1 run execute positioned ^ ^ ^-1 run function src:spawning/summon/entity {"entity":"$(entity)","id":"$(id)"}
$execute if score @s generic.math matches 0 run execute positioned ^ ^ ^ run function src:spawning/summon/entity {"entity":"$(entity)","id":"$(id)"}

# copy spawner id to entity from temp marker
execute positioned ~ ~ ~ run scoreboard players operation @e[type=!#src:non_entity,limit=1,sort=nearest,tag=spawning.newEntity] spawning.spawner.id = @s spawning.spawner.id