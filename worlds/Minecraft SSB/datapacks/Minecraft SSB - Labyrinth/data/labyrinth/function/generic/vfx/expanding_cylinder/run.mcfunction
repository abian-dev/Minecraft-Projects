## Runs Expanding Cylinder
# iterations
$scoreboard players add %vfxExpandingCylinder.$(id).iterations labyrinth.generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingCylinder.$(id).step labyrinth.generic.z += %vfxExpandingCylinder.$(id).speed labyrinth.generic.constant
$scoreboard players operation %vfxExpandingCylinder.$(id).density labyrinth.generic.z += %vfxExpandingCylinder.$(id).accuracy labyrinth.generic.constant
$scoreboard players set %vfxExpandingCylinder.$(id).sparsity labyrinth.generic.z 1000000
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity labyrinth.generic.z /= %vfxExpandingCylinder.$(id).density labyrinth.generic.z
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity-1 labyrinth.generic.z = %vfxExpandingCylinder.$(id).sparsity labyrinth.generic.z
$scoreboard players remove %vfxExpandingCylinder.$(id).sparsity-1 labyrinth.generic.z 1
$scoreboard players set %vfxExpandingCylinder.$(id).height labyrinth.generic.z 0

# store results
$execute store result storage minecraft:labyrinth.vfx expandingCylinder.$(id).step float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).step labyrinth.generic.z
$execute store result storage minecraft:labyrinth.vfx expandingCylinder.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity-1 labyrinth.generic.z
$execute store result storage minecraft:labyrinth.vfx expandingCylinder.$(id).density float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity labyrinth.generic.z
$execute store result storage minecraft:labyrinth.vfx expandingCylinder.$(id).height float 1.00 run scoreboard players get %vfxExpandingCylinder.$(id).0 labyrinth.generic.constant

# draw
tp @s ~ ~ ~ 0 0
$execute if score %vfxExpandingCylinder.$(id).iterations labyrinth.generic.z < %vfxExpandingCylinder.$(id).limit labyrinth.generic.constant at @s run function labyrinth:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:labyrinth.vfx expandingCylinder.$(id)
$execute if score %vfxExpandingCylinder.$(id).iterations labyrinth.generic.z >= %vfxExpandingCylinder.$(id).limit labyrinth.generic.constant run function labyrinth:generic/vfx/expanding_cylinder/end with storage minecraft:labyrinth.vfx expandingCylinder.$(id)