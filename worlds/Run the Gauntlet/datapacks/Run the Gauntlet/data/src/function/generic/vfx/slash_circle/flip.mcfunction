## Flips Arc and Movement
# flip movement
scoreboard players operation %vfxSlashCircle.step generic.x *= %vfxSlashCircle.-1 generic.constant
scoreboard players operation %vfxSlashCircle.step generic.y *= %vfxSlashCircle.-1 generic.constant
scoreboard players operation %vfxSlashCircle.step generic.z *= %vfxSlashCircle.-1 generic.constant

# flip arc
scoreboard players operation %vfxSlashCircle.x generic.dz = %vfxSlashCircle.ttlRadius-1 generic.constant
scoreboard players operation %vfxSlashCircle.sign generic.dz *= %vfxSlashCircle.-1 generic.constant

# reset diameter step counter
scoreboard players reset %vfxSlashCircle.diameterSteps generic.dz