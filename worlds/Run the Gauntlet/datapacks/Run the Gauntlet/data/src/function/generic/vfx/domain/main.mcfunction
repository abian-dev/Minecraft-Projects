## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:vfx curr.domain.id int 1 run scoreboard players get @s generic.id
function src:generic/vfx/domain/run with storage minecraft:vfx curr.domain