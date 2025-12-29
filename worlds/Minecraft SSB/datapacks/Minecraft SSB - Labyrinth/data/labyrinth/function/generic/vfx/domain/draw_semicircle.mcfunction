## Draws a Semi-Circle
$tp @s ~ ~ ~ ~ ~$(inaccuracyRot)
$execute if block ^ ^ ^$(circleRadius) #labyrinth:passable run particle $(particle) ^ ^ ^$(circleRadius) 0 0 0 0 1 force
$execute unless entity @s[x_rotation=90] at @s run function labyrinth:generic/vfx/domain/draw_semicircle with storage minecraft:labyrinth.vfx domain.$(id)