## Draws Circle Slash with Thickness
# adds thickness facing toward origin
$execute positioned ^ ^ ^$(y) facing $(originX) $(originY) $(originZ) run particle $(particle) ^ ^ ^$(thicknessOffset) 0 0 0 0 1 force

# offset++ until it reaches computed thickness
$scoreboard players operation %vfxSlashCircle.$(id).thicknessOffset labyrinth.generic.dz += %vfxSlashCircle.$(id).dist labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.$(id).thicknessOffset labyrinth.generic.dz
$execute unless score %vfxSlashCircle.$(id).thicknessOffset labyrinth.generic.dz >= %vfxSlashCircle.$(id).thicknessAtStep labyrinth.generic.dz positioned as @s run function labyrinth:generic/vfx/slash_circle/draw_thickness with storage minecraft:labyrinth.vfx slashCircle.$(id)