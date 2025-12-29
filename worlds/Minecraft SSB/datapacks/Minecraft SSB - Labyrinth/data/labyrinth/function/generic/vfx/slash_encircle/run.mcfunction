## Runs Encircling Slash
# get vector from pos to point
function labyrinth:generic/vfx/slash_encircle/get with storage minecraft:labyrinth.vfx slashEncircle

# find largest component
scoreboard players operation %vfxSlashEncircle.max labyrinth.generic.z = %vfxSlashEncircle.absVx labyrinth.generic.x
scoreboard players operation %vfxSlashEncircle.max labyrinth.generic.z > %vfxSlashEncircle.absVy labyrinth.generic.y

# normalize vector to unit vector
scoreboard players operation %vfxSlashEncircle.x labyrinth.generic.x *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.y labyrinth.generic.y *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.px labyrinth.generic.x *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.py labyrinth.generic.y *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.vx labyrinth.generic.x *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.vy labyrinth.generic.y *= %vfxSlashEncircle.100 labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.max labyrinth.generic.z /= %vfxSlashEncircle.inaccuracy labyrinth.generic.constant
scoreboard players operation %vfxSlashEncircle.vx labyrinth.generic.x /= %vfxSlashEncircle.max labyrinth.generic.z
scoreboard players operation %vfxSlashEncircle.vy labyrinth.generic.y /= %vfxSlashEncircle.max labyrinth.generic.z

# slash
function labyrinth:generic/vfx/slash_encircle/slash with storage minecraft:labyrinth.vfx slashEncircle

# recursive call
scoreboard players remove %vfxSlashEncircle.itt labyrinth.generic.z 1
execute if score %vfxSlashEncircle.itt labyrinth.generic.z matches 0.. run function labyrinth:generic/vfx/slash_encircle/run
execute if score %vfxSlashEncircle.itt labyrinth.generic.z matches ..-1 run function labyrinth:generic/vfx/slash_encircle/end_all