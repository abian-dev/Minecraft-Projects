## Gets Vector From Position to Point
# get pos and point
$execute store result score %vfxSlashEncircle.x labyrinth.generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.y labyrinth.generic.y run random value -$(pitch)..$(pitch)
$execute store result score %vfxSlashEncircle.px labyrinth.generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.py labyrinth.generic.y run random value -$(pitch)..$(pitch)

# add facing position
scoreboard players operation %vfxSlashEncircle.x labyrinth.generic.x += %vfxSlashEncircle.fx labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.y labyrinth.generic.y += %vfxSlashEncircle.fy labyrinth.generic.y
scoreboard players operation %vfxSlashEncircle.px labyrinth.generic.x += %vfxSlashEncircle.fx labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.py labyrinth.generic.y += %vfxSlashEncircle.fy labyrinth.generic.y

# get vector from pos to point
scoreboard players operation %vfxSlashEncircle.vx labyrinth.generic.x = %vfxSlashEncircle.px labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.vy labyrinth.generic.y = %vfxSlashEncircle.py labyrinth.generic.y
scoreboard players operation %vfxSlashEncircle.vx labyrinth.generic.x -= %vfxSlashEncircle.x labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.vy labyrinth.generic.y -= %vfxSlashEncircle.y labyrinth.generic.y

# get absolute values of the vector components
scoreboard players operation %vfxSlashEncircle.absVx labyrinth.generic.x = %vfxSlashEncircle.vx labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.absVy labyrinth.generic.y = %vfxSlashEncircle.vy labyrinth.generic.y
execute if score %vfxSlashEncircle.absVx labyrinth.generic.x matches ..0 run scoreboard players operation %vfxSlashEncircle.absVx labyrinth.generic.x *= %vfxSlashEncircle.-1 labyrinth.generic.constant
execute if score %vfxSlashEncircle.absVy labyrinth.generic.y matches ..0 run scoreboard players operation %vfxSlashEncircle.absVy labyrinth.generic.y *= %vfxSlashEncircle.-1 labyrinth.generic.constant

# retry if vector is too small
scoreboard players reset %vfxSlashEncircle.dist
scoreboard players operation %vfxSlashEncircle.dist labyrinth.generic.z += %vfxSlashEncircle.absVx labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.dist labyrinth.generic.z += %vfxSlashEncircle.absVy labyrinth.generic.y
execute if score %vfxSlashEncircle.dist labyrinth.generic.z < %vfxSlashEncircle.restr labyrinth.generic.constant run function labyrinth:generic/vfx/slash_encircle/get with storage minecraft:labyrinth.vfx slashEncircle