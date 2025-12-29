## Draws a Cylinder
# draw a circle at each vertical layer
$function labyrinth:generic/vfx/expanding_cylinder/draw_circle with storage minecraft:labyrinth.vfx expandingCylinder.$(id)

# calculate the height of the next layer
$scoreboard players operation %vfxExpandingCylinder.$(id).height labyrinth.generic.z += %vfxExpandingCylinder.$(id).inaccuracy labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx expandingCylinder.$(id).height float 0.01 run scoreboard players get %vfxExpandingCylinder.$(id).height labyrinth.generic.z
$execute unless score %vfxExpandingCylinder.$(id).height labyrinth.generic.z >= %vfxExpandingCylinder.$(id).height labyrinth.generic.constant at @s run function labyrinth:generic/vfx/expanding_cylinder/draw_cylinder with storage minecraft:labyrinth.vfx expandingCylinder.$(id)