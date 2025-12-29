# each itt gets u 1 more digit of operation
# in = circleRadius
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxDomain.$(id).raphB labyrinth.generic.math = %vfxDomain.$(id).in labyrinth.generic.math
$scoreboard players operation %vfxDomain.$(id).raphB labyrinth.generic.math /= %vfxDomain.$(id).raphA labyrinth.generic.math

# a = (a+b)/2
$scoreboard players operation %vfxDomain.$(id).raphA labyrinth.generic.math += %vfxDomain.$(id).raphB labyrinth.generic.math
$scoreboard players operation %vfxDomain.$(id).raphA labyrinth.generic.math /= %vfxDomain.$(id).2 labyrinth.generic.constant