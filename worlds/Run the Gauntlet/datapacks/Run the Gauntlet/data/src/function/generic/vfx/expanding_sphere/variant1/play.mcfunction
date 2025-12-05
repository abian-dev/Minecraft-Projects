# example call: function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"200","limit":"5","particle":"flame"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id generic.id 1
execute store result storage minecraft:vfx curr.expandingSphere.id int 1 run scoreboard players get %vfx.id generic.id

# store parameters
$data modify storage minecraft:vfx curr.expandingSphere.accuracy set value $(accuracy)
$data modify storage minecraft:vfx curr.expandingSphere.speed set value $(speed)
$data modify storage minecraft:vfx curr.expandingSphere.limit set value $(limit)
$data modify storage minecraft:vfx curr.expandingSphere.particle set value "$(particle)"

# execute
function src:generic/vfx/expanding_sphere/variant1/execute with storage minecraft:vfx curr.expandingSphere