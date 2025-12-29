## Draws a Cylinder
# draw a circle at each vertical layer
$function kits:generic/vfx/expanding_cylinder/draw_circle with storage minecraft:kits.vfx expandingCylinder.$(id)

# calculate the height of the next layer
$scoreboard players operation %vfxExpandingCylinder.$(id).height kits.generic.z += %vfxExpandingCylinder.$(id).inaccuracy kits.generic.constant
$execute store result storage minecraft:kits.vfx expandingCylinder.$(id).height float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).height kits.generic.z
$execute unless score %vfxExpandingCylinder.$(id).height kits.generic.z >= %vfxExpandingCylinder.$(id).height kits.generic.constant at @s run function kits:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:kits.vfx expandingCylinder.$(id)