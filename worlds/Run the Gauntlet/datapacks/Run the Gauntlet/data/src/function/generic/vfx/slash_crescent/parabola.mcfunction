# desmos: https://www.desmos.com/calculator/xapdwiht7y
# y = A - [4A/(d*d)](x-d/2)(x-d/2)
# A = peak
# d = ttlDist
# x = accSteps
## Parabola Curve Function
# x
scoreboard players operation %vfxSlashCrescent.accSteps generic.dz += %vfxSlashCrescent.dist generic.constant

# 4A/(d*d)
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz = %vfxSlashCrescent.4 generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz *= %vfxSlashCrescent.peak generic.dz
scoreboard players operation %vfxSlashCrescent.dxd generic.dz = %vfxSlashCrescent.ttlDist generic.constant
scoreboard players operation %vfxSlashCrescent.dxd generic.dz *= %vfxSlashCrescent.dxd generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz *= %vfxSlashCrescent.100000 generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz /= %vfxSlashCrescent.dxd generic.dz

# x-d/2
scoreboard players operation %vfxSlashCrescent.x-d/2 generic.dz = %vfxSlashCrescent.accSteps generic.dz
scoreboard players operation %vfxSlashCrescent.d/2 generic.dz = %vfxSlashCrescent.ttlDist generic.constant
scoreboard players operation %vfxSlashCrescent.d/2 generic.dz /= %vfxSlashCrescent.2 generic.constant
scoreboard players operation %vfxSlashCrescent.x-d/2 generic.dz -= %vfxSlashCrescent.d/2 generic.dz

# [4A/(d*d)](x-d/2)(x-d/2)
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz *= %vfxSlashCrescent.x-d/2 generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz *= %vfxSlashCrescent.x-d/2 generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz /= %vfxSlashCrescent.100000 generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz -= %vfxSlashCrescent.peak generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd generic.dz *= %vfxSlashCrescent.-1 generic.constant

# output
scoreboard players operation %vfxSlashCrescent.parabolaOut generic.dz = %vfxSlashCrescent.4A/dxd generic.dz
execute store result storage minecraft:vfx slashCrescent.parabolaOut double 0.01 run scoreboard players get %vfxSlashCrescent.parabolaOut generic.dz