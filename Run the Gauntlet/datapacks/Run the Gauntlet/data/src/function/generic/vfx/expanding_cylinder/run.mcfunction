## Runs Expanding Cylinder
# iterations
scoreboard players add %vfxExpandingCylinder.iterations generic.z 1

# next expansion
scoreboard players operation %vfxExpandingCylinder.step generic.z += %vfxExpandingCylinder.speed generic.constant
scoreboard players operation %vfxExpandingCylinder.density generic.z += %vfxExpandingCylinder.accuracy generic.constant
scoreboard players set %vfxExpandingCylinder.sparsity generic.z 1000000
scoreboard players operation %vfxExpandingCylinder.sparsity generic.z /= %vfxExpandingCylinder.density generic.z
scoreboard players operation %vfxExpandingCylinder.sparsity-1 generic.z = %vfxExpandingCylinder.sparsity generic.z
scoreboard players remove %vfxExpandingCylinder.sparsity-1 generic.z 1
scoreboard players set %vfxExpandingCylinder.height generic.z 0

# store results
execute store result storage minecraft:vfx expandingCylinder.step float 0.01 run scoreboard players get %vfxExpandingCylinder.step generic.z
execute store result storage minecraft:vfx expandingCylinder.density1Less float 0.01 run scoreboard players get %vfxExpandingCylinder.sparsity-1 generic.z
execute store result storage minecraft:vfx expandingCylinder.density float 0.01 run scoreboard players get %vfxExpandingCylinder.sparsity generic.z
execute store result storage minecraft:vfx expandingCylinder.height float 1.00 run scoreboard players get %vfxExpandingCylinder.0 generic.constant

# draw
tp @s ~ ~ ~ 0 0
execute if score %vfxExpandingCylinder.iterations generic.z < %vfxExpandingCylinder.limit generic.constant at @s run function src:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:vfx expandingCylinder
execute if score %vfxExpandingCylinder.iterations generic.z >= %vfxExpandingCylinder.limit generic.constant run function src:generic/vfx/expanding_cylinder/end