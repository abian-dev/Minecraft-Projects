# example call: function kits:generic/vfx/rotating_vertical/general/play {"speed":"200","duration":"20","vfx":"function"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id kits.generic.id 1
execute store result storage minecraft:kits.vfx curr.rotatingVertical.id int 1 run scoreboard players get %vfx.id kits.generic.id

# store parameters
$data modify storage minecraft:kits.vfx curr.rotatingVertical.speed set value $(speed)
$data modify storage minecraft:kits.vfx curr.rotatingVertical.duration set value $(duration)
$data modify storage minecraft:kits.vfx curr.rotatingVertical.vfx set value "$(vfx)"

# execute
function kits:generic/vfx/rotating_vertical/general/execute with storage minecraft:kits.vfx curr.rotatingVertical