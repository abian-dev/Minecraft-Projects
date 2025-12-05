## End of Rotating Vertical - Shine
# reset
$data remove storage minecraft:vfx shine.$(id)
$scoreboard players reset %vfxShine.$(id).speed
$scoreboard players reset %vfxShine.$(id).duration
$scoreboard players reset %vfxShine.$(id).inaccuracy
$scoreboard players reset %vfxShine.$(id).distance
kill @s