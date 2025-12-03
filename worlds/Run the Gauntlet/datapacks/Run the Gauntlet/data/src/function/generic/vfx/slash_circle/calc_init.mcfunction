## Calculates Initial Values
# current pos = r
$scoreboard players operation %vfxSlashCircle.pos $(objective) = %vfxSlashCircle.r $(objective)

# calculate step size
$scoreboard players operation %vfxSlashCircle.step $(objective) = %vfxSlashCircle.r2 $(objective)
$scoreboard players operation %vfxSlashCircle.step $(objective) -= %vfxSlashCircle.r $(objective)
$scoreboard players operation %vfxSlashCircle.step $(objective) /= %vfxSlashCircle.accuracy generic.constant