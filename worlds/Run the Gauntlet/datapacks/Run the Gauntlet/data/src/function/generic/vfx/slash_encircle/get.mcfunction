## Gets Vector From Position to Point
# get pos and point
$execute store result score %vfxSlashEncircle.x generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.y generic.y run random value -$(pitch)..$(pitch)
$execute store result score %vfxSlashEncircle.px generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.py generic.y run random value -$(pitch)..$(pitch)

# add facing position
scoreboard players operation %vfxSlashEncircle.x generic.x += %vfxSlashEncircle.fx generic.x
scoreboard players operation %vfxSlashEncircle.y generic.y += %vfxSlashEncircle.fy generic.y
scoreboard players operation %vfxSlashEncircle.px generic.x += %vfxSlashEncircle.fx generic.x
scoreboard players operation %vfxSlashEncircle.py generic.y += %vfxSlashEncircle.fy generic.y

# get vector from pos to point
scoreboard players operation %vfxSlashEncircle.vx generic.x = %vfxSlashEncircle.px generic.x
scoreboard players operation %vfxSlashEncircle.vy generic.y = %vfxSlashEncircle.py generic.y
scoreboard players operation %vfxSlashEncircle.vx generic.x -= %vfxSlashEncircle.x generic.x
scoreboard players operation %vfxSlashEncircle.vy generic.y -= %vfxSlashEncircle.y generic.y

# get absolute values of the vector components
scoreboard players operation %vfxSlashEncircle.absVx generic.x = %vfxSlashEncircle.vx generic.x
scoreboard players operation %vfxSlashEncircle.absVy generic.y = %vfxSlashEncircle.vy generic.y
execute if score %vfxSlashEncircle.absVx generic.x matches ..0 run scoreboard players operation %vfxSlashEncircle.absVx generic.x *= %vfxSlashEncircle.-1 generic.constant
execute if score %vfxSlashEncircle.absVy generic.y matches ..0 run scoreboard players operation %vfxSlashEncircle.absVy generic.y *= %vfxSlashEncircle.-1 generic.constant

# retry if vector is too small
scoreboard players reset %vfxSlashEncircle.dist
scoreboard players operation %vfxSlashEncircle.dist generic.z += %vfxSlashEncircle.absVx generic.x
scoreboard players operation %vfxSlashEncircle.dist generic.z += %vfxSlashEncircle.absVy generic.y
execute if score %vfxSlashEncircle.dist generic.z < %vfxSlashEncircle.restr generic.constant run function src:generic/vfx/slash_encircle/get with storage minecraft:vfx slashEncircle