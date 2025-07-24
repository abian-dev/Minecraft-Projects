## Gets Data
# get first intercept (r)
$execute rotated ~ 0 rotated ~$(yaw) ~$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r2 generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r2 generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r2 generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
function src:generic/vfx/slash_crescent/calc_init {"objective":"generic.x"}
function src:generic/vfx/slash_crescent/calc_init {"objective":"generic.y"}
function src:generic/vfx/slash_crescent/calc_init {"objective":"generic.z"}

# calculate abs values of step
scoreboard players operation %vfxSlashCrescent.absStep generic.x = %vfxSlashCrescent.step generic.x
scoreboard players operation %vfxSlashCrescent.absStep generic.y = %vfxSlashCrescent.step generic.y
scoreboard players operation %vfxSlashCrescent.absStep generic.z = %vfxSlashCrescent.step generic.z
execute if score %vfxSlashCrescent.absStep generic.x matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep generic.x *= %vfxSlashCrescent.-1 generic.constant
execute if score %vfxSlashCrescent.absStep generic.y matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep generic.y *= %vfxSlashCrescent.-1 generic.constant
execute if score %vfxSlashCrescent.absStep generic.z matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep generic.z *= %vfxSlashCrescent.-1 generic.constant

# estimate step dist |x|+|y|+|z|
scoreboard players operation %vfxSlashCrescent.dist generic.constant = %vfxSlashCrescent.absStep generic.x
scoreboard players operation %vfxSlashCrescent.dist generic.constant += %vfxSlashCrescent.absStep generic.y
scoreboard players operation %vfxSlashCrescent.dist generic.constant += %vfxSlashCrescent.absStep generic.z

# estimate total dist
scoreboard players operation %vfxSlashCrescent.ttlDist generic.constant = %vfxSlashCrescent.dist generic.constant
scoreboard players operation %vfxSlashCrescent.ttlDist generic.constant *= %vfxSlashCrescent.accuracy generic.constant

## Run
function src:generic/vfx/slash_crescent/run

kill @s