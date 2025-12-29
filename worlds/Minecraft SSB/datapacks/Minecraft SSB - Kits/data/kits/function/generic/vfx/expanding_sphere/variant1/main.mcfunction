## The entry-point to run function
# execute "run" with linked id
execute store result storage minecraft:kits.vfx curr.expandingSphere.id int 1 run scoreboard players get @s kits.generic.id
function kits:generic/vfx/expanding_sphere/variant1/run with storage minecraft:kits.vfx curr.expandingSphere