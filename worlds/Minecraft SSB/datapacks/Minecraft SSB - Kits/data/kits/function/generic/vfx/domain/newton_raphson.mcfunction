# each itt gets u 1 more digit of operation
# in = circleRadius
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxDomain.$(id).raphB kits.generic.math = %vfxDomain.$(id).in kits.generic.math
$scoreboard players operation %vfxDomain.$(id).raphB kits.generic.math /= %vfxDomain.$(id).raphA kits.generic.math

# a = (a+b)/2
$scoreboard players operation %vfxDomain.$(id).raphA kits.generic.math += %vfxDomain.$(id).raphB kits.generic.math
$scoreboard players operation %vfxDomain.$(id).raphA kits.generic.math /= %vfxDomain.$(id).2 kits.generic.constant