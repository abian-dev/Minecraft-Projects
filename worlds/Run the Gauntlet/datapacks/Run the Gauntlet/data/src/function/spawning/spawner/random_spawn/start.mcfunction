## Starts the entire procedure
# initialize
$scoreboard players set %spawning.marker.randomPos.itt generic.math $(entityNum)
$data modify storage spawning spawning.marker.randomPos.id set value $(entityID)
$data modify storage spawning spawning.marker.randomPos.entity set value "$(entity)"

# run
summon marker ~ ~ ~ {Tags:["spawning.spawnerRandomPos"]}
$execute as @e[type=marker,limit=1,sort=nearest,tag=spawning.spawnerRandomPos] at @s run function src:spawning/spawner/random_spawn/init with storage spawning spawner.$(spawnerID)

# reset
scoreboard players reset %spawning.marker.randomPos.itt
data remove storage spawning spawning.marker.randomPos
scoreboard players set @s spawning.cd 0