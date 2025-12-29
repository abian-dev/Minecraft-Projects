## Gets Vector From Position to Point
# get pos and point
$execute store result score %vfxSlashEncircle.x kits.generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.y kits.generic.y run random value -$(pitch)..$(pitch)
$execute store result score %vfxSlashEncircle.px kits.generic.x run random value -$(yaw)..$(yaw)
$execute store result score %vfxSlashEncircle.py kits.generic.y run random value -$(pitch)..$(pitch)

# add facing position
scoreboard players operation %vfxSlashEncircle.x kits.generic.x += %vfxSlashEncircle.fx kits.generic.x
scoreboard players operation %vfxSlashEncircle.y kits.generic.y += %vfxSlashEncircle.fy kits.generic.y
scoreboard players operation %vfxSlashEncircle.px kits.generic.x += %vfxSlashEncircle.fx kits.generic.x
scoreboard players operation %vfxSlashEncircle.py kits.generic.y += %vfxSlashEncircle.fy kits.generic.y

# get vector from pos to point
scoreboard players operation %vfxSlashEncircle.vx kits.generic.x = %vfxSlashEncircle.px kits.generic.x
scoreboard players operation %vfxSlashEncircle.vy kits.generic.y = %vfxSlashEncircle.py kits.generic.y
scoreboard players operation %vfxSlashEncircle.vx kits.generic.x -= %vfxSlashEncircle.x kits.generic.x
scoreboard players operation %vfxSlashEncircle.vy kits.generic.y -= %vfxSlashEncircle.y kits.generic.y

# get absolute values of the vector components
scoreboard players operation %vfxSlashEncircle.absVx kits.generic.x = %vfxSlashEncircle.vx kits.generic.x
scoreboard players operation %vfxSlashEncircle.absVy kits.generic.y = %vfxSlashEncircle.vy kits.generic.y
execute if score %vfxSlashEncircle.absVx kits.generic.x matches ..0 run scoreboard players operation %vfxSlashEncircle.absVx kits.generic.x *= %vfxSlashEncircle.-1 kits.generic.constant
execute if score %vfxSlashEncircle.absVy kits.generic.y matches ..0 run scoreboard players operation %vfxSlashEncircle.absVy kits.generic.y *= %vfxSlashEncircle.-1 kits.generic.constant

# retry if vector is too small
scoreboard players reset %vfxSlashEncircle.dist
scoreboard players operation %vfxSlashEncircle.dist kits.generic.z += %vfxSlashEncircle.absVx kits.generic.x
scoreboard players operation %vfxSlashEncircle.dist kits.generic.z += %vfxSlashEncircle.absVy kits.generic.y
execute if score %vfxSlashEncircle.dist kits.generic.z < %vfxSlashEncircle.restr kits.generic.constant run function kits:generic/vfx/slash_encircle/get with storage minecraft:kits.vfx slashEncircle