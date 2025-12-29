## End of Expanding Cylinder
# reset
$data remove storage minecraft:labyrinth.vfx expandingCylinder.$(id)
$scoreboard players reset %vfxExpandingCylinder.$(id).accuracy
$scoreboard players reset %vfxExpandingCylinder.$(id).inaccuracy
$scoreboard players reset %vfxExpandingCylinder.$(id).speed
$scoreboard players reset %vfxExpandingCylinder.$(id).limit
$scoreboard players reset %vfxExpandingCylinder.$(id).height
$scoreboard players reset %vfxExpandingCylinder.$(id).0
$scoreboard players reset %vfxExpandingCylinder.$(id).density
$scoreboard players reset %vfxExpandingCylinder.$(id).sparsity
$scoreboard players reset %vfxExpandingCylinder.$(id).sparsity-1
$scoreboard players reset %vfxExpandingCylinder.$(id).step
$scoreboard players reset %vfxExpandingCylinder.$(id).iterations
kill @s