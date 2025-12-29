## Flips Arc and Movement
# flip movement
$scoreboard players operation %vfxSlashCircle.$(id).step labyrinth.generic.x *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step labyrinth.generic.y *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).step labyrinth.generic.z *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant

# flip arc
$scoreboard players operation %vfxSlashCircle.$(id).x labyrinth.generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).sign labyrinth.generic.dz *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant

# reset diameter step counter
$scoreboard players reset %vfxSlashCircle.$(id).diameterSteps labyrinth.generic.dz