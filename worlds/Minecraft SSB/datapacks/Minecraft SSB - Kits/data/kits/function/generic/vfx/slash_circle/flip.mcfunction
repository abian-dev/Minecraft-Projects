## Flips Arc and Movement
# flip movement
$scoreboard players operation %vfxSlashCircle.$(id).step kits.generic.x *= %vfxSlashCircle.$(id).-1 kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step kits.generic.y *= %vfxSlashCircle.$(id).-1 kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step kits.generic.z *= %vfxSlashCircle.$(id).-1 kits.generic.constant

# flip arc
$scoreboard players operation %vfxSlashCircle.$(id).x kits.generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).sign kits.generic.dz *= %vfxSlashCircle.$(id).-1 kits.generic.constant

# reset diameter step counter
$scoreboard players reset %vfxSlashCircle.$(id).diameterSteps kits.generic.dz