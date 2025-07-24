## Draws a Semi-Circle
$tp @s ~ ~ ~ ~ ~$(inaccuracyRot)
$execute if block ^ ^ ^$(circleRadius) #src:passable run particle $(particle) ^ ^ ^$(circleRadius)
execute unless entity @s[x_rotation=90] at @s run function src:generic/vfx/domain/draw_semicircle with storage minecraft:vfx domain