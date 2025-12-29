# desmos: https://www.desmos.com/calculator/xapdwiht7y
# y = A - [4A/(d*d)](x-d/2)(x-d/2)
# A = peak
# d = ttlDist
# x = accSteps
## Parabola Curve Function
# x
scoreboard players operation %vfxSlashCrescent.accSteps kits.generic.dz += %vfxSlashCrescent.dist kits.generic.constant

# 4A/(d*d)
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz = %vfxSlashCrescent.4 kits.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz *= %vfxSlashCrescent.peak kits.generic.dz
scoreboard players operation %vfxSlashCrescent.dxd kits.generic.dz = %vfxSlashCrescent.ttlDist kits.generic.constant
scoreboard players operation %vfxSlashCrescent.dxd kits.generic.dz *= %vfxSlashCrescent.dxd kits.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz *= %vfxSlashCrescent.100000 kits.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz /= %vfxSlashCrescent.dxd kits.generic.dz

# x-d/2
scoreboard players operation %vfxSlashCrescent.x-d/2 kits.generic.dz = %vfxSlashCrescent.accSteps kits.generic.dz
scoreboard players operation %vfxSlashCrescent.d/2 kits.generic.dz = %vfxSlashCrescent.ttlDist kits.generic.constant
scoreboard players operation %vfxSlashCrescent.d/2 kits.generic.dz /= %vfxSlashCrescent.2 kits.generic.constant
scoreboard players operation %vfxSlashCrescent.x-d/2 kits.generic.dz -= %vfxSlashCrescent.d/2 kits.generic.dz

# [4A/(d*d)](x-d/2)(x-d/2)
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz *= %vfxSlashCrescent.x-d/2 kits.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz *= %vfxSlashCrescent.x-d/2 kits.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz /= %vfxSlashCrescent.100000 kits.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz -= %vfxSlashCrescent.peak kits.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd kits.generic.dz *= %vfxSlashCrescent.-1 kits.generic.constant

# output
scoreboard players operation %vfxSlashCrescent.parabolaOut kits.generic.dz = %vfxSlashCrescent.4A/dxd kits.generic.dz
execute store result storage minecraft:kits.vfx slashCrescent.parabolaOut double 0.01 run scoreboard players get %vfxSlashCrescent.parabolaOut kits.generic.dz