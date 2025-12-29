## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:kits.vfx curr.expandingCylinder.id int 1 run scoreboard players get @s kits.generic.id
function kits:generic/vfx/expanding_cylinder/run with storage minecraft:kits.vfx curr.expandingCylinder