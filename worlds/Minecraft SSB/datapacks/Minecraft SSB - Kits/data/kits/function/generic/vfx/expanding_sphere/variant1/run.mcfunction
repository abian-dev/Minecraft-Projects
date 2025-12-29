## Runs Expanding Sphere
# iterations
$scoreboard players add %vfxExpandingSphere.$(id).iterations kits.generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingSphere.$(id).step kits.generic.z += %vfxExpandingSphere.$(id).speed kits.generic.constant
$scoreboard players operation %vfxExpandingSphere.$(id).density kits.generic.z += %vfxExpandingSphere.$(id).accuracy kits.generic.constant
$scoreboard players set %vfxExpandingSphere.$(id).sparsity kits.generic.z 1000000
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity kits.generic.z /= %vfxExpandingSphere.$(id).density kits.generic.z
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity-1 kits.generic.z = %vfxExpandingSphere.$(id).sparsity kits.generic.z
$scoreboard players remove %vfxExpandingSphere.$(id).sparsity-1 kits.generic.z 1

# store results
$execute store result storage minecraft:kits.vfx expandingSphere.$(id).step float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).step kits.generic.z
$execute store result storage minecraft:kits.vfx expandingSphere.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity-1 kits.generic.z
$execute store result storage minecraft:kits.vfx expandingSphere.$(id).density float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity kits.generic.z

# draw
tp @s ~ ~ ~ 0 -90
$execute if score %vfxExpandingSphere.$(id).iterations kits.generic.z < %vfxExpandingSphere.$(id).limit kits.generic.constant at @s run function kits:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:kits.vfx expandingSphere.$(id)
$execute if score %vfxExpandingSphere.$(id).iterations kits.generic.z >= %vfxExpandingSphere.$(id).limit kits.generic.constant run function kits:generic/vfx/expanding_sphere/variant1/end with storage minecraft:kits.vfx expandingSphere.$(id)