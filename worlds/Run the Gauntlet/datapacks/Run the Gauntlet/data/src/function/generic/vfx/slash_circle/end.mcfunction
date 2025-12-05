## End of Circle Slash
# reset
$data remove storage minecraft:vfx slashCircle.$(id)

$scoreboard players reset %vfxSlashCircle.$(id).radius
$scoreboard players reset %vfxSlashCircle.$(id).completion
$scoreboard players reset %vfxSlashCircle.$(id).thickness
$scoreboard players reset %vfxSlashCircle.$(id).accuracy
$scoreboard players reset %vfxSlashCircle.$(id).acceleration
$scoreboard players reset %vfxSlashCircle.$(id).speed
$scoreboard players reset %vfxSlashCircle.$(id).pitch

$scoreboard players reset %vfxSlashCircle.$(id).-1
$scoreboard players reset %vfxSlashCircle.$(id).2
$scoreboard players reset %vfxSlashCircle.$(id).4
$scoreboard players reset %vfxSlashCircle.$(id).100

$scoreboard players reset %vfxSlashCircle.$(id).r
$scoreboard players reset %vfxSlashCircle.$(id).r2
$scoreboard players reset %vfxSlashCircle.$(id).runItt
$scoreboard players reset %vfxSlashCircle.$(id).pos

$scoreboard players reset %vfxSlashCircle.$(id).step
$scoreboard players reset %vfxSlashCircle.$(id).step^2
$scoreboard players reset %vfxSlashCircle.$(id).dist
$scoreboard players reset %vfxSlashCircle.$(id).ttlDist
$scoreboard players reset %vfxSlashCircle.$(id).ttlRadius
$scoreboard players reset %vfxSlashCircle.$(id).ttlRadius-1
$scoreboard players reset %vfxSlashCircle.$(id).arcSteps
$scoreboard players reset %vfxSlashCircle.$(id).diameterSteps
$scoreboard players reset %vfxSlashCircle.$(id).fullSteps
$scoreboard players reset %vfxSlashCircle.$(id).maxSteps

$scoreboard players reset %vfxSlashCircle.$(id).x
$scoreboard players reset %vfxSlashCircle.$(id).y
$scoreboard players reset %vfxSlashCircle.$(id).sign
$scoreboard players reset %vfxSlashCircle.$(id).in
$scoreboard players reset %vfxSlashCircle.$(id).raphA
$scoreboard players reset %vfxSlashCircle.$(id).raphB
$scoreboard players reset %vfxSlashCircle.$(id).R^2
$scoreboard players reset %vfxSlashCircle.$(id).x^2

$scoreboard players reset %vfxSlashCircle.$(id).thicknessOffset
$scoreboard players reset %vfxSlashCircle.$(id).thicknessAtStep
$scoreboard players reset %vfxSlashCircle.$(id).Bt
$scoreboard players reset %vfxSlashCircle.$(id).Bnum
$scoreboard players reset %vfxSlashCircle.$(id).Bden
$scoreboard players reset %vfxSlashCircle.$(id).M-s

kill @s