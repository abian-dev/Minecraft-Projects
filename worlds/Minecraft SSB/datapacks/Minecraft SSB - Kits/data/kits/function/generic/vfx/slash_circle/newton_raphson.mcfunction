# each itt gets u 1 more digit of operation
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxSlashCircle.$(id).raphB kits.generic.math = %vfxSlashCircle.$(id).in kits.generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphB kits.generic.math /= %vfxSlashCircle.$(id).raphA kits.generic.math

# a = (a+b)/2
$scoreboard players operation %vfxSlashCircle.$(id).raphA kits.generic.math += %vfxSlashCircle.$(id).raphB kits.generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphA kits.generic.math /= %vfxSlashCircle.$(id).2 kits.generic.constant