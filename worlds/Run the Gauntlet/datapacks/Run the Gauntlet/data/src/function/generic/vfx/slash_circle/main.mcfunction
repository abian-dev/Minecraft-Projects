## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:vfx curr.slashCircle.id int 1 run scoreboard players get @s generic.id
function src:generic/vfx/slash_circle/run with storage minecraft:vfx curr.slashCircle