# example call: function labyrinth:generic/vfx/expanding_cylinder/play {"accuracy":"200","speed":"200","limit":"5","height":"2000","particle":"flame"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id labyrinth.generic.id 1
execute store result storage minecraft:labyrinth.vfx curr.expandingCylinder.id int 1 run scoreboard players get %vfx.id labyrinth.generic.id

# store parameters
$data modify storage minecraft:labyrinth.vfx curr.expandingCylinder.accuracy set value $(accuracy)
$data modify storage minecraft:labyrinth.vfx curr.expandingCylinder.speed set value $(speed)
$data modify storage minecraft:labyrinth.vfx curr.expandingCylinder.limit set value $(limit)
$data modify storage minecraft:labyrinth.vfx curr.expandingCylinder.height set value $(height)
$data modify storage minecraft:labyrinth.vfx curr.expandingCylinder.particle set value "$(particle)"

# execute
function labyrinth:generic/vfx/expanding_cylinder/execute with storage minecraft:labyrinth.vfx curr.expandingCylinder