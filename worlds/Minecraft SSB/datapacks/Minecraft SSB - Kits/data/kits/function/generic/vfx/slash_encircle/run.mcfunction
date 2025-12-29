## Runs Encircling Slash
# get vector from pos to point
function kits:generic/vfx/slash_encircle/get with storage minecraft:kits.vfx slashEncircle

# find largest component
scoreboard players operation %vfxSlashEncircle.max kits.generic.z = %vfxSlashEncircle.absVx kits.generic.x
scoreboard players operation %vfxSlashEncircle.max kits.generic.z > %vfxSlashEncircle.absVy kits.generic.y

# normalize vector to unit vector
scoreboard players operation %vfxSlashEncircle.x kits.generic.x *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.y kits.generic.y *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.px kits.generic.x *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.py kits.generic.y *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.vx kits.generic.x *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.vy kits.generic.y *= %vfxSlashEncircle.100 kits.generic.constant
scoreboard players operation %vfxSlashEncircle.max kits.generic.z /= %vfxSlashEncircle.inaccuracy kits.generic.constant
scoreboard players operation %vfxSlashEncircle.vx kits.generic.x /= %vfxSlashEncircle.max kits.generic.z
scoreboard players operation %vfxSlashEncircle.vy kits.generic.y /= %vfxSlashEncircle.max kits.generic.z

# slash
function kits:generic/vfx/slash_encircle/slash with storage minecraft:kits.vfx slashEncircle

# recursive call
scoreboard players remove %vfxSlashEncircle.itt kits.generic.z 1
execute if score %vfxSlashEncircle.itt kits.generic.z matches 0.. run function kits:generic/vfx/slash_encircle/run
execute if score %vfxSlashEncircle.itt kits.generic.z matches ..-1 run function kits:generic/vfx/slash_encircle/end_all