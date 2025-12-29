## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:labyrinth.vfx curr.expandingCylinder.id int 1 run scoreboard players get @s labyrinth.generic.id
function labyrinth:generic/vfx/expanding_cylinder/run with storage minecraft:labyrinth.vfx curr.expandingCylinder