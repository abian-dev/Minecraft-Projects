## Draws a Cylinder
# draw a circle at each vertical layer
$function src:generic/vfx/expanding_cylinder/draw_circle with storage minecraft:vfx expandingCylinder.$(id)

# calculate the height of the next layer
$scoreboard players operation %vfxExpandingCylinder.$(id).height generic.z += %vfxExpandingCylinder.$(id).inaccuracy generic.constant
$execute store result storage minecraft:vfx expandingCylinder.$(id).height float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).height generic.z
$execute unless score %vfxExpandingCylinder.$(id).height generic.z >= %vfxExpandingCylinder.$(id).height generic.constant at @s run function src:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:vfx expandingCylinder.$(id)