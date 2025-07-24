## Initializes random spawn position
# copy spawner id to temp marker
scoreboard players operation @s spawning.spawner.id = @e[type=marker,limit=1,sort=nearest,tag=spawning.spawner] spawning.spawner.id

# init direction and max distance, then find
tp @s ~ ~ ~ ~ 0
execute store result entity @s Rotation[0] float 1 run random value -180..180
$execute store result score @s generic.math run random value 0..$(spawnRadius)
execute rotated as @s run function src:spawning/spawner/random_spawn/find

# recursive call
scoreboard players remove %spawning.marker.randomPos.itt generic.math 1
$execute if score %spawning.marker.randomPos.itt generic.math matches 1.. run function src:spawning/spawner/random_spawn/init with storage spawning spawner.$(spawnerID)

# end of recursion
kill @s