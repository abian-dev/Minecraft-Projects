## Gets Data
# get origin (o)
$execute store result storage minecraft:kits.vfx slashCircle.$(id).originX double 0.01 run data get entity @s Pos[0] 100
$execute store result storage minecraft:kits.vfx slashCircle.$(id).originY double 0.01 run data get entity @s Pos[1] 100
$execute store result storage minecraft:kits.vfx slashCircle.$(id).originZ double 0.01 run data get entity @s Pos[2] 100

# get first intercept (r)
$execute rotated ~ 0 rotated ~90 ~$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r kits.generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r kits.generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r kits.generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r2 kits.generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r2 kits.generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r2 kits.generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
$function kits:generic/vfx/slash_circle/calc_init {"objective":"kits.generic.x","id":"$(id)"}
$function kits:generic/vfx/slash_circle/calc_init {"objective":"kits.generic.y","id":"$(id)"}
$function kits:generic/vfx/slash_circle/calc_init {"objective":"kits.generic.z","id":"$(id)"}

# compute step dist √(x^2 + y^2 + z^2)
$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.x = %vfxSlashCircle.$(id).step kits.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.y = %vfxSlashCircle.$(id).step kits.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.z = %vfxSlashCircle.$(id).step kits.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.x *= %vfxSlashCircle.$(id).step^2 kits.generic.x 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.y *= %vfxSlashCircle.$(id).step^2 kits.generic.y 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 kits.generic.z *= %vfxSlashCircle.$(id).step^2 kits.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).dist kits.generic.constant = %vfxSlashCircle.$(id).step^2 kits.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).dist kits.generic.constant += %vfxSlashCircle.$(id).step^2 kits.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).dist kits.generic.constant += %vfxSlashCircle.$(id).step^2 kits.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).in kits.generic.math = %vfxSlashCircle.$(id).dist kits.generic.constant
$scoreboard players set %vfxSlashCircle.$(id).raphA kits.generic.math 1255
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$function kits:generic/vfx/slash_circle/newton_raphson with storage minecraft:kits.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).raphA kits.generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.$(id).raphA kits.generic.math *= %vfxSlashCircle.$(id).-1 kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).dist kits.generic.constant = %vfxSlashCircle.$(id).raphA kits.generic.math

# compute exact total diameter
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist kits.generic.constant = %vfxSlashCircle.$(id).dist kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist kits.generic.constant *= %vfxSlashCircle.$(id).accuracy kits.generic.constant

# compute exact total radius
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius kits.generic.constant = %vfxSlashCircle.$(id).ttlDist kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius kits.generic.constant /= %vfxSlashCircle.$(id).2 kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 kits.generic.constant = %vfxSlashCircle.$(id).ttlRadius kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 kits.generic.constant *= %vfxSlashCircle.$(id).-1 kits.generic.constant

# initialize x
$scoreboard players operation %vfxSlashCircle.$(id).x kits.generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 kits.generic.constant