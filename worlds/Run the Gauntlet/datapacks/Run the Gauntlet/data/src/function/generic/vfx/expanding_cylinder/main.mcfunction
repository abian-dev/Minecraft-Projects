## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:vfx curr.expandingCylinder.id int 1 run scoreboard players get @s generic.id
function src:generic/vfx/expanding_cylinder/run with storage minecraft:vfx curr.expandingCylinder