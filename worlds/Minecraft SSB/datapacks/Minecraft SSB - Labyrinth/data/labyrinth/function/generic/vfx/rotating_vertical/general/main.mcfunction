## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:labyrinth.vfx curr.rotatingVertical.id int 1 run scoreboard players get @s labyrinth.generic.id
function labyrinth:generic/vfx/rotating_vertical/general/run with storage minecraft:labyrinth.vfx curr.rotatingVertical