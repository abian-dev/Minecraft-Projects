## End of Expanding Sphere
# reset
$data remove storage minecraft:labyrinth.vfx expandingSphere.$(id)
$scoreboard players reset %vfxExpandingSphere.$(id).accuracy
$scoreboard players reset %vfxExpandingSphere.$(id).speed
$scoreboard players reset %vfxExpandingSphere.$(id).limit
$scoreboard players reset %vfxExpandingSphere.$(id).density
$scoreboard players reset %vfxExpandingSphere.$(id).sparsity
$scoreboard players reset %vfxExpandingSphere.$(id).sparsity-1
$scoreboard players reset %vfxExpandingSphere.$(id).step
$scoreboard players reset %vfxExpandingSphere.$(id).iterations
kill @s