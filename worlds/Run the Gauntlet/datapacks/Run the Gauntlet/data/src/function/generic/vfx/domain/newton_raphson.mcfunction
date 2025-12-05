# each itt gets u 1 more digit of operation
# in = circleRadius
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxDomain.$(id).raphB generic.math = %vfxDomain.$(id).in generic.math
$scoreboard players operation %vfxDomain.$(id).raphB generic.math /= %vfxDomain.$(id).raphA generic.math

# a = (a+b)/2
$scoreboard players operation %vfxDomain.$(id).raphA generic.math += %vfxDomain.$(id).raphB generic.math
$scoreboard players operation %vfxDomain.$(id).raphA generic.math /= %vfxDomain.$(id).2 generic.constant