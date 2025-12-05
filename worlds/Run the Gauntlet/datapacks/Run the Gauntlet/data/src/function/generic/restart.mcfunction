## Reset
# remove storages
data remove storage genfunc frame
data remove storage genfunc randomPos

data remove storage vfx domain
data remove storage vfx expandingCylinder
data remove storage vfx expandingSphere
data remove storage vfx expandingSphere2
data remove storage vfx radialForkedLightning
data remove storage vfx slashCrescent
data remove storage vfx slashEncircle
data remove storage vfx unlimitedVoid

# remove scoreboards
scoreboard objectives remove generic.constant
scoreboard objectives remove generic.math
scoreboard objectives remove generic.id

scoreboard objectives remove generic.x
scoreboard objectives remove generic.y
scoreboard objectives remove generic.z

scoreboard objectives remove generic.dx
scoreboard objectives remove generic.dy
scoreboard objectives remove generic.dz

scoreboard objectives remove generic.frame.index
scoreboard objectives remove generic.frame.rate

scoreboard objectives remove generic.raycast.dist
scoreboard objectives remove generic.raycast.step
scoreboard objectives remove generic.raycast.step2