## Runs Expanding Sphere
# iterations
$scoreboard players add %vfxExpandingSphere.$(id).iterations labyrinth.generic.z 1

# next expansion
$scoreboard players operation %vfxExpandingSphere.$(id).step labyrinth.generic.z += %vfxExpandingSphere.$(id).speed labyrinth.generic.constant
$scoreboard players operation %vfxExpandingSphere.$(id).density labyrinth.generic.z += %vfxExpandingSphere.$(id).accuracy labyrinth.generic.constant
$scoreboard players set %vfxExpandingSphere.$(id).sparsity labyrinth.generic.z 1000000
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity labyrinth.generic.z /= %vfxExpandingSphere.$(id).density labyrinth.generic.z
$scoreboard players operation %vfxExpandingSphere.$(id).sparsity-1 labyrinth.generic.z = %vfxExpandingSphere.$(id).sparsity labyrinth.generic.z
$scoreboard players remove %vfxExpandingSphere.$(id).sparsity-1 labyrinth.generic.z 1

# store results
$execute store result storage minecraft:labyrinth.vfx expandingSphere.$(id).step float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).step labyrinth.generic.z
$execute store result storage minecraft:labyrinth.vfx expandingSphere.$(id).density1Less float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity-1 labyrinth.generic.z
$execute store result storage minecraft:labyrinth.vfx expandingSphere.$(id).density float 0.01 run scoreboard players get %vfxExpandingSphere.$(id).sparsity labyrinth.generic.z

# draw
tp @s ~ ~ ~ 0 -90
$execute if score %vfxExpandingSphere.$(id).iterations labyrinth.generic.z < %vfxExpandingSphere.$(id).limit labyrinth.generic.constant at @s run function labyrinth:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:labyrinth.vfx expandingSphere.$(id)
$execute if score %vfxExpandingSphere.$(id).iterations labyrinth.generic.z >= %vfxExpandingSphere.$(id).limit labyrinth.generic.constant run function labyrinth:generic/vfx/expanding_sphere/variant1/end with storage minecraft:labyrinth.vfx expandingSphere.$(id)