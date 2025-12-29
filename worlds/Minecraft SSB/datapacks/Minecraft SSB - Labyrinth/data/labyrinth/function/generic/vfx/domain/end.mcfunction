## End of Domain Expansion
# reset
$data remove storage minecraft:labyrinth.vfx domain.$(id)
$scoreboard players reset %vfxDomain.$(id).accuracy
$scoreboard players reset %vfxDomain.$(id).inaccuracy
$scoreboard players reset %vfxDomain.$(id).radius
$scoreboard players reset %vfxDomain.$(id).radiusStep
$scoreboard players reset %vfxDomain.$(id).newRadiusStep
$scoreboard players reset %vfxDomain.$(id).newRadiusStep^2
$scoreboard players reset %vfxDomain.$(id).speed
$scoreboard players reset %vfxDomain.$(id).circleRadius
$scoreboard players reset %vfxDomain.$(id).floorItt
$scoreboard players reset %vfxDomain.$(id).10
$scoreboard players reset %vfxDomain.$(id).2
$scoreboard players reset %vfxDomain.$(id).-1
$scoreboard players reset %vfxDomain.$(id).in
$scoreboard players reset %vfxDomain.$(id).raphA
$scoreboard players reset %vfxDomain.$(id).raphB
kill @s