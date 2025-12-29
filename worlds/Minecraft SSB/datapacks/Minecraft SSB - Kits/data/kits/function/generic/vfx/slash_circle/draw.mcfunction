## Draws Circle Slash
$particle $(particle) ^ ^ ^$(y) 0 0 0 0 1 force

# adds thickness
$scoreboard players reset %vfxSlashCircle.$(id).thicknessOffset kits.generic.dz
$execute positioned as @s run function kits:generic/vfx/slash_circle/draw_thickness with storage minecraft:kits.vfx slashCircle.$(id)