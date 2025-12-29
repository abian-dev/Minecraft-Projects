## Runs Expanding Cylinder
# iterations
$scoreboard players add %vfxExpandingCylinder.$(id).iterations kits.generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingCylinder.$(id).step kits.generic.z += %vfxExpandingCylinder.$(id).speed kits.generic.constant
$scoreboard players operation %vfxExpandingCylinder.$(id).density kits.generic.z += %vfxExpandingCylinder.$(id).accuracy kits.generic.constant
$scoreboard players set %vfxExpandingCylinder.$(id).sparsity kits.generic.z 1000000
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity kits.generic.z /= %vfxExpandingCylinder.$(id).density kits.generic.z
$scoreboard players operation %vfxExpandingCylinder.$(id).sparsity-1 kits.generic.z = %vfxExpandingCylinder.$(id).sparsity kits.generic.z
$scoreboard players remove %vfxExpandingCylinder.$(id).sparsity-1 kits.generic.z 1
$scoreboard players set %vfxExpandingCylinder.$(id).height kits.generic.z 0

# store results
$execute store result storage minecraft:kits.vfx expandingCylinder.$(id).step float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).step kits.generic.z
$execute store result storage minecraft:kits.vfx expandingCylinder.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity-1 kits.generic.z
$execute store result storage minecraft:kits.vfx expandingCylinder.$(id).density float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).sparsity kits.generic.z
$execute store result storage minecraft:kits.vfx expandingCylinder.$(id).height float 1.00 run scoreboard players get %vfxExpandingCylinder.$(id).0 kits.generic.constant

# draw
tp @s ~ ~ ~ 0 0
$execute if score %vfxExpandingCylinder.$(id).iterations kits.generic.z < %vfxExpandingCylinder.$(id).limit kits.generic.constant at @s run function kits:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:kits.vfx expandingCylinder.$(id)
$execute if score %vfxExpandingCylinder.$(id).iterations kits.generic.z >= %vfxExpandingCylinder.$(id).limit kits.generic.constant run function kits:generic/vfx/expanding_cylinder/end with storage minecraft:kits.vfx expandingCylinder.$(id)