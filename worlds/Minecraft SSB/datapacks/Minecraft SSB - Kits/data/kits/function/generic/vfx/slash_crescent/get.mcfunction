## Gets Data
# get first intercept (r)
$execute rotated ~ 0 rotated ~$(yaw) ~$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r kits.generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r kits.generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r kits.generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
$execute rotated ~ 0 rotated ~$(yawReverse) ~-$(pitch) run tp @s ^ ^ ^$(distance)
execute store result score %vfxSlashCrescent.r2 kits.generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCrescent.r2 kits.generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCrescent.r2 kits.generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
function kits:generic/vfx/slash_crescent/calc_init {"objective":"kits.generic.x"}
function kits:generic/vfx/slash_crescent/calc_init {"objective":"kits.generic.y"}
function kits:generic/vfx/slash_crescent/calc_init {"objective":"kits.generic.z"}

# calculate abs values of step
scoreboard players operation %vfxSlashCrescent.absStep kits.generic.x = %vfxSlashCrescent.step kits.generic.x
scoreboard players operation %vfxSlashCrescent.absStep kits.generic.y = %vfxSlashCrescent.step kits.generic.y
scoreboard players operation %vfxSlashCrescent.absStep kits.generic.z = %vfxSlashCrescent.step kits.generic.z
execute if score %vfxSlashCrescent.absStep kits.generic.x matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.generic.x *= %vfxSlashCrescent.-1 kits.generic.constant
execute if score %vfxSlashCrescent.absStep kits.generic.y matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.generic.y *= %vfxSlashCrescent.-1 kits.generic.constant
execute if score %vfxSlashCrescent.absStep kits.generic.z matches ..0 run scoreboard players operation %vfxSlashCrescent.absStep kits.generic.z *= %vfxSlashCrescent.-1 kits.generic.constant

# estimate step dist |x|+|y|+|z|
scoreboard players operation %vfxSlashCrescent.dist kits.generic.constant = %vfxSlashCrescent.absStep kits.generic.x
scoreboard players operation %vfxSlashCrescent.dist kits.generic.constant += %vfxSlashCrescent.absStep kits.generic.y
scoreboard players operation %vfxSlashCrescent.dist kits.generic.constant += %vfxSlashCrescent.absStep kits.generic.z

# estimate total dist
scoreboard players operation %vfxSlashCrescent.ttlDist kits.generic.constant = %vfxSlashCrescent.dist kits.generic.constant
scoreboard players operation %vfxSlashCrescent.ttlDist kits.generic.constant *= %vfxSlashCrescent.accuracy kits.generic.constant

## Run
function kits:generic/vfx/slash_crescent/run

kill @s