## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:labyrinth.vfx curr.slashCircle.id int 1 run scoreboard players get @s labyrinth.generic.id
function labyrinth:generic/vfx/slash_circle/run with storage minecraft:labyrinth.vfx curr.slashCircle