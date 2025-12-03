## Draws Circle Slash with Thickness
# adds thickness facing toward origin
$execute positioned ^ ^ ^$(y) facing $(originX) $(originY) $(originZ) run particle $(particle) ^ ^ ^$(thicknessOffset) 0 0 0 0 1 force

# offset++ until it reaches computed thickness
scoreboard players operation %vfxSlashCircle.thicknessOffset generic.dz += %vfxSlashCircle.dist generic.constant
execute store result storage minecraft:vfx slashCircle.thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.thicknessOffset generic.dz
execute unless score %vfxSlashCircle.thicknessOffset generic.dz >= %vfxSlashCircle.thicknessAtStep generic.dz positioned as @s run function src:generic/vfx/slash_circle/draw_thickness with storage minecraft:vfx slashCircle