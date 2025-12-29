## Reset
# remove storages
data remove storage minecraft:labyrinth.genfunc frame
data remove storage minecraft:labyrinth.genfunc randomPos

data remove storage minecraft:labyrinth.vfx domain
data remove storage minecraft:labyrinth.vfx expandingCylinder
data remove storage minecraft:labyrinth.vfx expandingSphere
data remove storage minecraft:labyrinth.vfx expandingSphere2
data remove storage minecraft:labyrinth.vfx radialForkedLightning
data remove storage minecraft:labyrinth.vfx slashCrescent
data remove storage minecraft:labyrinth.vfx slashEncircle
data remove storage minecraft:labyrinth.vfx unlimitedVoid

# remove scoreboards
scoreboard objectives remove labyrinth.generic.constant
scoreboard objectives remove labyrinth.generic.math
scoreboard objectives remove labyrinth.generic.id

scoreboard objectives remove labyrinth.generic.x
scoreboard objectives remove labyrinth.generic.y
scoreboard objectives remove labyrinth.generic.z

scoreboard objectives remove labyrinth.generic.dx
scoreboard objectives remove labyrinth.generic.dy
scoreboard objectives remove labyrinth.generic.dz

scoreboard objectives remove labyrinth.generic.frame.index
scoreboard objectives remove labyrinth.generic.frame.rate

scoreboard objectives remove labyrinth.generic.raycast.dist
scoreboard objectives remove labyrinth.generic.raycast.step
