# example call: function src:generic/vfx/rotating_vertical/shine/play {"speed":"100","duration":"10","inaccuracy":"100","distance":"20","particle":"electric_spark"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id generic.id 1
execute store result storage minecraft:vfx curr.shine.id int 1 run scoreboard players get %vfx.id generic.id

# store parameters
$data modify storage minecraft:vfx curr.shine.speed set value $(speed)
$data modify storage minecraft:vfx curr.shine.duration set value $(duration)
$data modify storage minecraft:vfx curr.shine.inaccuracy set value $(inaccuracy)
$data modify storage minecraft:vfx curr.shine.distance set value $(distance)
$data modify storage minecraft:vfx curr.shine.particle set value "$(particle)"

# execute
function src:generic/vfx/rotating_vertical/shine/execute with storage minecraft:vfx curr.shine