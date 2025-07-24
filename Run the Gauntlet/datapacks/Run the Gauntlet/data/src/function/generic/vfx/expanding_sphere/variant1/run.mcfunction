## Runs Expanding Sphere
# iterations
scoreboard players add %vfxExpandingSphere.iterations generic.z 1

# next expansion
scoreboard players operation %vfxExpandingSphere.step generic.z += %vfxExpandingSphere.speed generic.constant
scoreboard players operation %vfxExpandingSphere.density generic.z += %vfxExpandingSphere.accuracy generic.constant
scoreboard players set %vfxExpandingSphere.sparsity generic.z 1000000
scoreboard players operation %vfxExpandingSphere.sparsity generic.z /= %vfxExpandingSphere.density generic.z
scoreboard players operation %vfxExpandingSphere.sparsity-1 generic.z = %vfxExpandingSphere.sparsity generic.z
scoreboard players remove %vfxExpandingSphere.sparsity-1 generic.z 1

# store results
execute store result storage minecraft:vfx expandingSphere.step float 0.01 run scoreboard players get %vfxExpandingSphere.step generic.z
execute store result storage minecraft:vfx expandingSphere.density1Less float 0.01 run scoreboard players get %vfxExpandingSphere.sparsity-1 generic.z
execute store result storage minecraft:vfx expandingSphere.density float 0.01 run scoreboard players get %vfxExpandingSphere.sparsity generic.z

# draw
tp @s ~ ~ ~ 0 -90
execute if score %vfxExpandingSphere.iterations generic.z < %vfxExpandingSphere.limit generic.constant at @s run function src:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:vfx expandingSphere
execute if score %vfxExpandingSphere.iterations generic.z >= %vfxExpandingSphere.limit generic.constant run function src:generic/vfx/expanding_sphere/variant1/end