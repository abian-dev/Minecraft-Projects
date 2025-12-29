## Gets Data
# get first intercept (r)
$execute rotated ~ 0 rotated ~$(yaw) ~$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r labyrinth.generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r labyrinth.generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r labyrinth.generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r2 labyrinth.generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r2 labyrinth.generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r2 labyrinth.generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
function labyrinth:generic/vfx/slash_crescent/calc_init {"objective":"labyrinth.generic.x"}
function labyrinth:generic/vfx/slash_crescent/calc_init {"objective":"labyrinth.generic.y"}
function labyrinth:generic/vfx/slash_crescent/calc_init {"objective":"labyrinth.generic.z"}

# calculate abs values of step
scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.x = %vfxSlashCrescent.step labyrinth.generic.x
scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.y = %vfxSlashCrescent.step labyrinth.generic.y
scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.z = %vfxSlashCrescent.step labyrinth.generic.z
execute if score %vfxSlashCrescent.absStep labyrinth.generic.x matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.x *= %vfxSlashCrescent.-1 labyrinth.generic.constant
execute if score %vfxSlashCrescent.absStep labyrinth.generic.y matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.y *= %vfxSlashCrescent.-1 labyrinth.generic.constant
execute if score %vfxSlashCrescent.absStep labyrinth.generic.z matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep labyrinth.generic.z *= %vfxSlashCrescent.-1 labyrinth.generic.constant

# estimate step dist |x|+|y|+|z|
scoreboard players operation %vfxSlashCrescent.dist labyrinth.generic.constant = %vfxSlashCrescent.absStep labyrinth.generic.x
scoreboard players operation %vfxSlashCrescent.dist labyrinth.generic.constant += %vfxSlashCrescent.absStep labyrinth.generic.y
scoreboard players operation %vfxSlashCrescent.dist labyrinth.generic.constant += %vfxSlashCrescent.absStep labyrinth.generic.z

# estimate total dist
scoreboard players operation %vfxSlashCrescent.ttlDist labyrinth.generic.constant = %vfxSlashCrescent.dist labyrinth.generic.constant
scoreboard players operation %vfxSlashCrescent.ttlDist labyrinth.generic.constant *= %vfxSlashCrescent.accuracy labyrinth.generic.constant

## Run
function labyrinth:generic/vfx/slash_crescent/run

kill @s