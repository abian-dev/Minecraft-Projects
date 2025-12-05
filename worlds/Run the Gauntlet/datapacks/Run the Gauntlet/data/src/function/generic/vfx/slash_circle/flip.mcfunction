## Flips Arc and Movement
# flip movement
$scoreboard players operation %vfxSlashCircle.$(id).step generic.x *= %vfxSlashCircle.$(id).-1 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step generic.y *= %vfxSlashCircle.$(id).-1 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step generic.z *= %vfxSlashCircle.$(id).-1 generic.constant

# flip arc
$scoreboard players operation %vfxSlashCircle.$(id).x generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).sign generic.dz *= %vfxSlashCircle.$(id).-1 generic.constant

# reset diameter step counter
$scoreboard players reset %vfxSlashCircle.$(id).diameterSteps generic.dz