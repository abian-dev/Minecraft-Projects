## Reset
# remove storages
data remove storage minecraft:kits.genfunc frame
data remove storage minecraft:kits.genfunc randomPos

data remove storage minecraft:kits.vfx domain
data remove storage minecraft:kits.vfx expandingCylinder
data remove storage minecraft:kits.vfx expandingSphere
data remove storage minecraft:kits.vfx expandingSphere2
data remove storage minecraft:kits.vfx radialForkedLightning
data remove storage minecraft:kits.vfx slashCrescent
data remove storage minecraft:kits.vfx slashEncircle
data remove storage minecraft:kits.vfx unlimitedVoid

# remove scoreboards
scoreboard objectives remove kits.generic.constant
scoreboard objectives remove kits.generic.math
scoreboard objectives remove kits.generic.id

scoreboard objectives remove kits.generic.x
scoreboard objectives remove kits.generic.y
scoreboard objectives remove kits.generic.z

scoreboard objectives remove kits.generic.dx
scoreboard objectives remove kits.generic.dy
scoreboard objectives remove kits.generic.dz

scoreboard objectives remove kits.generic.frame.index
scoreboard objectives remove kits.generic.frame.rate

scoreboard objectives remove kits.generic.raycast.dist
scoreboard objectives remove kits.generic.raycast.step
