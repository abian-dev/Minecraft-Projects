## Calculates Initial Values
# current pos = r
$scoreboard players operation %vfxSlashCircle.$(id).pos $(objective) = %vfxSlashCircle.$(id).r $(objective)

# calculate step size
$scoreboard players operation %vfxSlashCircle.$(id).step $(objective) = %vfxSlashCircle.$(id).r2 $(objective)
$scoreboard players operation %vfxSlashCircle.$(id).step $(objective) -= %vfxSlashCircle.$(id).r $(objective)
$scoreboard players operation %vfxSlashCircle.$(id).step $(objective) /= %vfxSlashCircle.$(id).accuracy labyrinth.generic.constant