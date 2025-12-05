# example call: function src:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"flame"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id generic.id 1
execute store result storage minecraft:vfx curr.slashCircle.id int 1 run scoreboard players get %vfx.id generic.id

# store parameters
$data modify storage minecraft:vfx curr.slashCircle.radius set value $(radius)
$data modify storage minecraft:vfx curr.slashCircle.completion set value $(completion)
$data modify storage minecraft:vfx curr.slashCircle.thickness set value $(thickness)
$data modify storage minecraft:vfx curr.slashCircle.accuracy set value $(accuracy)
$data modify storage minecraft:vfx curr.slashCircle.acceleration set value $(acceleration)
$data modify storage minecraft:vfx curr.slashCircle.speed set value $(speed)
$data modify storage minecraft:vfx curr.slashCircle.pitch set value $(pitch)
$data modify storage minecraft:vfx curr.slashCircle.particle set value "$(particle)"

# execute
function src:generic/vfx/slash_circle/execute with storage minecraft:vfx curr.slashCircle