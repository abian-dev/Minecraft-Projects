## Runs Expanding Cylinder
# iterations
$scoreboard players add %vfxExpandingCylinder.$(id).iterations generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingCylinder.$(id).step generic.z += %vfxExpandingCylinder.$(id).speed generic.constant
$scoreboard players operation %vfxExpandingCylinder.$(id).density generic.z += %vfxExpandingCylinder.$(id).accuracy generic.constant
$scoreboard players set %vfxExpandingCylinder.$(id).sparsity generic.z 1000000
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity generic.z /= %vfxExpandingCylinder.$(id).density generic.z
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity-1 generic.z = %vfxExpandingCylinder.$(id).sparsity generic.z
$scoreboard players remove %vfxExpandingCylinder.$(id).sparsity-1 generic.z 1
$scoreboard players set %vfxExpandingCylinder.$(id).height generic.z 0

# store results
$execute store result storage minecraft:vfx expandingCylinder.$(id).step float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).step generic.z
$execute store result storage minecraft:vfx expandingCylinder.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity-1 generic.z
$execute store result storage minecraft:vfx expandingCylinder.$(id).density float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity generic.z
$execute store result storage minecraft:vfx expandingCylinder.$(id).height float 1.00 run scoreboard players get %vfxExpandingCylinder.$(id).0 generic.constant

# draw
tp @s ~ ~ ~ 0 0
$execute if score %vfxExpandingCylinder.$(id).iterations generic.z < %vfxExpandingCylinder.$(id).limit generic.constant at @s run function src:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:vfx expandingCylinder.$(id)
$execute if score %vfxExpandingCylinder.$(id).iterations generic.z >= %vfxExpandingCylinder.$(id).limit generic.constant run function src:generic/vfx/expanding_cylinder/end with storage minecraft:vfx expandingCylinder.$(id)