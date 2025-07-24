## Draws a Cylinder
# draw a circle at each vertical layer
function src:generic/vfx/expanding_cylinder/draw_circle with storage minecraft:vfx expandingCylinder

# calculate the height of the next layer
scoreboard players operation %vfxExpandingCylinder.height generic.z += %vfxExpandingCylinder.inaccuracy generic.constant
execute store result storage minecraft:vfx expandingCylinder.height float 0.01 run scoreboard players get %vfxExpandingCylinder.height generic.z
execute unless score %vfxExpandingCylinder.height generic.z >= %vfxExpandingCylinder.height generic.constant at @s run function src:generic/vfx/expanding_cylinder/draw_cylinder