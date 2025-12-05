## Gets Data
# get origin (o)
$execute store result storage minecraft:vfx slashCircle.$(id).originX double 0.01 run data get entity @s Pos[0] 100
$execute store result storage minecraft:vfx slashCircle.$(id).originY double 0.01 run data get entity @s Pos[1] 100
$execute store result storage minecraft:vfx slashCircle.$(id).originZ double 0.01 run data get entity @s Pos[2] 100

# get first intercept (r)
$execute rotated ~ 0 rotated ~90 ~$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r2 generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r2 generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r2 generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
$function src:generic/vfx/slash_circle/calc_init {"objective":"generic.x","id":"$(id)"}
$function src:generic/vfx/slash_circle/calc_init {"objective":"generic.y","id":"$(id)"}
$function src:generic/vfx/slash_circle/calc_init {"objective":"generic.z","id":"$(id)"}

# compute step dist √(x^2 + y^2 + z^2)
$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.x = %vfxSlashCircle.$(id).step generic.x
$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.y = %vfxSlashCircle.$(id).step generic.y
$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.z = %vfxSlashCircle.$(id).step generic.z

$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.x *= %vfxSlashCircle.$(id).step^2 generic.x 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.y *= %vfxSlashCircle.$(id).step^2 generic.y 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 generic.z *= %vfxSlashCircle.$(id).step^2 generic.z

$scoreboard players operation %vfxSlashCircle.$(id).dist generic.constant = %vfxSlashCircle.$(id).step^2 generic.x
$scoreboard players operation %vfxSlashCircle.$(id).dist generic.constant += %vfxSlashCircle.$(id).step^2 generic.y
$scoreboard players operation %vfxSlashCircle.$(id).dist generic.constant += %vfxSlashCircle.$(id).step^2 generic.z

$scoreboard players operation %vfxSlashCircle.$(id).in generic.math = %vfxSlashCircle.$(id).dist generic.constant
$scoreboard players set %vfxSlashCircle.$(id).raphA generic.math 1255
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).raphA generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.$(id).raphA generic.math *= %vfxSlashCircle.$(id).-1 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).dist generic.constant = %vfxSlashCircle.$(id).raphA generic.math

# compute exact total diameter
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist generic.constant = %vfxSlashCircle.$(id).dist generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist generic.constant *= %vfxSlashCircle.$(id).accuracy generic.constant

# compute exact total radius
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius generic.constant = %vfxSlashCircle.$(id).ttlDist generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius generic.constant /= %vfxSlashCircle.$(id).2 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 generic.constant = %vfxSlashCircle.$(id).ttlRadius generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 generic.constant *= %vfxSlashCircle.$(id).-1 generic.constant

# initialize x
$scoreboard players operation %vfxSlashCircle.$(id).x generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 generic.constant