# each itt gets u 1 more digit of operation
# in = circleRadius
## Newton Raphson
# b = in/a
scoreboard players operation %vfxDomain.raphB generic.math = %vfxDomain.in generic.math
scoreboard players operation %vfxDomain.raphB generic.math /= %vfxDomain.raphA generic.math

# a = (a+b)/2
scoreboard players operation %vfxDomain.raphA generic.math += %vfxDomain.raphB generic.math
scoreboard players operation %vfxDomain.raphA generic.math /= %vfxDomain.2 generic.constant