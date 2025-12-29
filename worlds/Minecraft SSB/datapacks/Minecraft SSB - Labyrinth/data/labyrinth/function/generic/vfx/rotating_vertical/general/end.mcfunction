## End of Rotating Vertical - General
# reset
$data remove storage minecraft:labyrinth.vfx rotatingVertical.$(id)
$scoreboard players reset %vfxRotatingVertical.$(id).speed
$scoreboard players reset %vfxRotatingVertical.$(id).duration
kill @s