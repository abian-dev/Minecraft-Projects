# each itt gets u 1 more digit of operation
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxSlashCircle.$(id).raphB generic.math = %vfxSlashCircle.$(id).in generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphB generic.math /= %vfxSlashCircle.$(id).raphA generic.math

# a = (a+b)/2
$scoreboard players operation %vfxSlashCircle.$(id).raphA generic.math += %vfxSlashCircle.$(id).raphB generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphA generic.math /= %vfxSlashCircle.$(id).2 generic.constant