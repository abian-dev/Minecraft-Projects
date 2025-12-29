## Draws Circle Slash with Thickness
# adds thickness facing toward origin
$execute positioned ^ ^ ^$(y) facing $(originX) $(originY) $(originZ) run particle $(particle) ^ ^ ^$(thicknessOffset) 0 0 0 0 1 force

# offset++ until it reaches computed thickness
$scoreboard players operation %vfxSlashCircle.$(id).thicknessOffset kits.generic.dz += %vfxSlashCircle.$(id).dist kits.generic.constant
$execute store result storage minecraft:kits.vfx slashCircle.$(id).thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.$(id).thicknessOffset kits.generic.dz
$execute unless score %vfxSlashCircle.$(id).thicknessOffset kits.generic.dz >= %vfxSlashCircle.$(id).thicknessAtStep kits.generic.dz positioned as @s run function kits:generic/vfx/slash_circle/draw_thickness with storage minecraft:kits.vfx slashCircle.$(id)