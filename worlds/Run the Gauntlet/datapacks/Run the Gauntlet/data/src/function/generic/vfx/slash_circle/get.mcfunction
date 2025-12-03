## Gets Data
# get origin (o)
execute store result storage minecraft:vfx slashCircle.originX double 0.01 run data get entity @s Pos[0] 100
execute store result storage minecraft:vfx slashCircle.originY double 0.01 run data get entity @s Pos[1] 100
execute store result storage minecraft:vfx slashCircle.originZ double 0.01 run data get entity @s Pos[2] 100

# get first intercept (r)
$execute rotated ~ 0 rotated ~90 ~$(pitch) run tp @s ^ ^ ^$(radius)
execute store result score %vfxSlashCircle.r generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCircle.r generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCircle.r generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
execute store result score %vfxSlashCircle.r2 generic.x run data get entity @s Pos[0] 100
execute store result score %vfxSlashCircle.r2 generic.y run data get entity @s Pos[1] 100
execute store result score %vfxSlashCircle.r2 generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
function src:generic/vfx/slash_circle/calc_init {"objective":"generic.x"}
function src:generic/vfx/slash_circle/calc_init {"objective":"generic.y"}
function src:generic/vfx/slash_circle/calc_init {"objective":"generic.z"}

# compute step dist √(x^2 + y^2 + z^2)
scoreboard players operation %vfxSlashCircle.step^2 generic.x = %vfxSlashCircle.step generic.x
scoreboard players operation %vfxSlashCircle.step^2 generic.y = %vfxSlashCircle.step generic.y
scoreboard players operation %vfxSlashCircle.step^2 generic.z = %vfxSlashCircle.step generic.z

scoreboard players operation %vfxSlashCircle.step^2 generic.x *= %vfxSlashCircle.step^2 generic.x 
scoreboard players operation %vfxSlashCircle.step^2 generic.y *= %vfxSlashCircle.step^2 generic.y 
scoreboard players operation %vfxSlashCircle.step^2 generic.z *= %vfxSlashCircle.step^2 generic.z

scoreboard players operation %vfxSlashCircle.dist generic.constant = %vfxSlashCircle.step^2 generic.x
scoreboard players operation %vfxSlashCircle.dist generic.constant += %vfxSlashCircle.step^2 generic.y
scoreboard players operation %vfxSlashCircle.dist generic.constant += %vfxSlashCircle.step^2 generic.z

scoreboard players operation %vfxSlashCircle.in generic.math = %vfxSlashCircle.dist generic.constant
scoreboard players set %vfxSlashCircle.raphA generic.math 1255
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
execute if score %vfxSlashCircle.raphA generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.raphA generic.math *= %vfxSlashCircle.-1 generic.constant
scoreboard players operation %vfxSlashCircle.dist generic.constant = %vfxSlashCircle.raphA generic.math

# compute exact total diameter
scoreboard players operation %vfxSlashCircle.ttlDist generic.constant = %vfxSlashCircle.dist generic.constant
scoreboard players operation %vfxSlashCircle.ttlDist generic.constant *= %vfxSlashCircle.accuracy generic.constant

# compute exact total radius
scoreboard players operation %vfxSlashCircle.ttlRadius generic.constant = %vfxSlashCircle.ttlDist generic.constant
scoreboard players operation %vfxSlashCircle.ttlRadius generic.constant /= %vfxSlashCircle.2 generic.constant
scoreboard players operation %vfxSlashCircle.ttlRadius-1 generic.constant = %vfxSlashCircle.ttlRadius generic.constant
scoreboard players operation %vfxSlashCircle.ttlRadius-1 generic.constant *= %vfxSlashCircle.-1 generic.constant

# initialize x
scoreboard players operation %vfxSlashCircle.x generic.dz = %vfxSlashCircle.ttlRadius-1 generic.constant