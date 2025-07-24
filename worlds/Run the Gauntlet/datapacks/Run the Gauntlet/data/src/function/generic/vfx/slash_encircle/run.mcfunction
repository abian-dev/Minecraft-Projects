## Runs Encircling Slash
# get vector from pos to point
function src:generic/vfx/slash_encircle/get with storage minecraft:vfx slashEncircle

# find largest component
scoreboard players operation %vfxSlashEncircle.max generic.z = %vfxSlashEncircle.absVx generic.x
scoreboard players operation %vfxSlashEncircle.max generic.z > %vfxSlashEncircle.absVy generic.y

# normalize vector to unit vector
scoreboard players operation %vfxSlashEncircle.x generic.x *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.y generic.y *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.px generic.x *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.py generic.y *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.vx generic.x *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.vy generic.y *= %vfxSlashEncircle.100 generic.constant
scoreboard players operation %vfxSlashEncircle.max generic.z /= %vfxSlashEncircle.inaccuracy generic.constant
scoreboard players operation %vfxSlashEncircle.vx generic.x /= %vfxSlashEncircle.max generic.z
scoreboard players operation %vfxSlashEncircle.vy generic.y /= %vfxSlashEncircle.max generic.z

# slash
function src:generic/vfx/slash_encircle/slash with storage minecraft:vfx slashEncircle

# recursive call
scoreboard players remove %vfxSlashEncircle.itt generic.z 1
execute if score %vfxSlashEncircle.itt generic.z matches 0.. run function src:generic/vfx/slash_encircle/run
execute if score %vfxSlashEncircle.itt generic.z matches ..-1 run function src:generic/vfx/slash_encircle/end_all