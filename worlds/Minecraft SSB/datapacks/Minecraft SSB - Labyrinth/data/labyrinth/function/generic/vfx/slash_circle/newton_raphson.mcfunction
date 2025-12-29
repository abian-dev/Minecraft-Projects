# each itt gets u 1 more digit of operation
## Newton Raphson
# b = in/a
$scoreboard players operation %vfxSlashCircle.$(id).raphB labyrinth.generic.math = %vfxSlashCircle.$(id).in labyrinth.generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphB labyrinth.generic.math /= %vfxSlashCircle.$(id).raphA labyrinth.generic.math

# a = (a+b)/2
$scoreboard players operation %vfxSlashCircle.$(id).raphA labyrinth.generic.math += %vfxSlashCircle.$(id).raphB labyrinth.generic.math
$scoreboard players operation %vfxSlashCircle.$(id).raphA labyrinth.generic.math /= %vfxSlashCircle.$(id).2 labyrinth.generic.constant