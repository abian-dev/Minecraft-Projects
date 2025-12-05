## Runs Expanding Sphere
# iterations
$scoreboard players add %vfxExpandingSphere.$(id).iterations generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingSphere.$(id).step generic.z += %vfxExpandingSphere.$(id).speed generic.constant
$scoreboard players operation %vfxExpandingSphere.$(id).density generic.z += %vfxExpandingSphere.$(id).accuracy generic.constant
$scoreboard players set %vfxExpandingSphere.$(id).sparsity generic.z 1000000
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity generic.z /= %vfxExpandingSphere.$(id).density generic.z
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity-1 generic.z = %vfxExpandingSphere.$(id).sparsity generic.z
$scoreboard players remove %vfxExpandingSphere.$(id).sparsity-1 generic.z 1

# store results
$execute store result storage minecraft:vfx expandingSphere.$(id).step float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).step generic.z
$execute store result storage minecraft:vfx expandingSphere.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity-1 generic.z
$execute store result storage minecraft:vfx expandingSphere.$(id).density float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity generic.z

# draw
tp @s ~ ~ ~ 0 -90
$execute if score %vfxExpandingSphere.$(id).iterations generic.z < %vfxExpandingSphere.$(id).limit generic.constant at @s run function src:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:vfx expandingSphere.$(id)
$execute if score %vfxExpandingSphere.$(id).iterations generic.z >= %vfxExpandingSphere.$(id).limit generic.constant run function src:generic/vfx/expanding_sphere/variant1/end with storage minecraft:vfx expandingSphere.$(id)