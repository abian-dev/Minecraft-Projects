## Draws a Sphere
function kits:generic/vfx/expanding_sphere/variant2/draw_circle with storage minecraft:kits.vfx expandingSphere2
$tp @s ~ ~ ~ ~ ~$(inaccuracy)
execute unless entity @s[x_rotation=90] at @s run function kits:generic/vfx/expanding_sphere/variant2/draw_sphere with storage minecraft:kits.vfx expandingSphere2