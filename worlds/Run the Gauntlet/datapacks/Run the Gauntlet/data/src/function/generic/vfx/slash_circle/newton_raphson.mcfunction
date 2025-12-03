# each itt gets u 1 more digit of operation
## Newton Raphson
# b = in/a
scoreboard players operation %vfxSlashCircle.raphB generic.math = %vfxSlashCircle.in generic.math
scoreboard players operation %vfxSlashCircle.raphB generic.math /= %vfxSlashCircle.raphA generic.math

# a = (a+b)/2
scoreboard players operation %vfxSlashCircle.raphA generic.math += %vfxSlashCircle.raphB generic.math
scoreboard players operation %vfxSlashCircle.raphA generic.math /= %vfxSlashCircle.2 generic.constant