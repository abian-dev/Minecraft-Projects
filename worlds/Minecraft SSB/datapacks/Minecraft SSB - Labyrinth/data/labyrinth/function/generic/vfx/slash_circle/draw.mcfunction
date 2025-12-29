## Draws Circle Slash
$particle $(particle) ^ ^ ^$(y) 0 0 0 0 1 force

# adds thickness
$scoreboard players reset %vfxSlashCircle.$(id).thicknessOffset labyrinth.generic.dz
$execute positioned as @s run function labyrinth:generic/vfx/slash_circle/draw_thickness with storage minecraft:labyrinth.vfx slashCircle.$(id)