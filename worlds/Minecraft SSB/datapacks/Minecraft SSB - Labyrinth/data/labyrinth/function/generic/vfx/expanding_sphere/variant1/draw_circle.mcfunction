## Draws a Circle
$tp @s ~ ~ ~ ~$(density) ~
$particle $(particle) ^ ^ ^$(step) 0 0 0 0 1 force
$execute unless entity @s[y_rotation=0..$(density1Less)] at @s run function labyrinth:generic/vfx/expanding_sphere/variant1/draw_circle with storage minecraft:labyrinth.vfx expandingSphere.$(id)