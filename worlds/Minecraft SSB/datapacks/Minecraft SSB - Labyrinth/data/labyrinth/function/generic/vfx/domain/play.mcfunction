# example call: function labyrinth:generic/vfx/domain/play {"accuracy":"300","radius":"1000","speed":"3","particle":"block_marker{block_state:{Name:black_concrete}}"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id labyrinth.generic.id 1
execute store result storage minecraft:labyrinth.vfx curr.domain.id int 1 run scoreboard players get %vfx.id labyrinth.generic.id

# store parameters
$data modify storage minecraft:labyrinth.vfx curr.domain.accuracy set value $(accuracy)
$data modify storage minecraft:labyrinth.vfx curr.domain.radius set value $(radius)
$data modify storage minecraft:labyrinth.vfx curr.domain.speed set value $(speed)
$data modify storage minecraft:labyrinth.vfx curr.domain.particle set value "$(particle)"

# execute
function labyrinth:generic/vfx/domain/execute with storage minecraft:labyrinth.vfx curr.domain