# desmos: https://www.desmos.com/calculator/xapdwiht7y
# y = A - [4A/(d*d)](x-d/2)(x-d/2)
# A = peak
# d = ttlDist
# x = accSteps
## Parabola Curve Function
# x
scoreboard players operation %vfxSlashCrescent.accSteps labyrinth.generic.dz += %vfxSlashCrescent.dist labyrinth.generic.constant

# 4A/(d*d)
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz = %vfxSlashCrescent.4 labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz *= %vfxSlashCrescent.peak labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.dxd labyrinth.generic.dz = %vfxSlashCrescent.ttlDist labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.dxd labyrinth.generic.dz *= %vfxSlashCrescent.dxd labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz *= %vfxSlashCrescent.100000 labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz /= %vfxSlashCrescent.dxd labyrinth.generic.dz

# x-d/2
scoreboard players operation %vfxSlashCrescent.x-d/2 labyrinth.generic.dz = %vfxSlashCrescent.accSteps labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.d/2 labyrinth.generic.dz = %vfxSlashCrescent.ttlDist labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.d/2 labyrinth.generic.dz /= %vfxSlashCrescent.2 labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.x-d/2 labyrinth.generic.dz -= %vfxSlashCrescent.d/2 labyrinth.generic.dz

# [4A/(d*d)](x-d/2)(x-d/2)
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz *= %vfxSlashCrescent.x-d/2 labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz *= %vfxSlashCrescent.x-d/2 labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz /= %vfxSlashCrescent.100000 labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz -= %vfxSlashCrescent.peak labyrinth.generic.dz
scoreboard players operation %vfxSlashCrescent.4A/dxd labyrinth.generic.dz *= %vfxSlashCrescent.-1 labyrinth.generic.constant

# output
scoreboard players operation %vfxSlashCrescent.parabolaOut labyrinth.generic.dz = %vfxSlashCrescent.4A/dxd labyrinth.generic.dz
execute store result storage minecraft:labyrinth.vfx slashCrescent.parabolaOut double 0.01 run scoreboard players get %vfxSlashCrescent.parabolaOut labyrinth.generic.dz