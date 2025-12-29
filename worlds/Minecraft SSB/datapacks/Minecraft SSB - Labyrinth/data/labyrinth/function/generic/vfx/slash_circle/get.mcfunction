## Gets Data
# get origin (o)
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).originX double 0.01 run data get entity @s Pos[0] 100
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).originY double 0.01 run data get entity @s Pos[1] 100
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).originZ double 0.01 run data get entity @s Pos[2] 100

# get first intercept (r)
$execute rotated ~ 0 rotated ~90 ~$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r labyrinth.generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r labyrinth.generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r labyrinth.generic.z run data get entity @s Pos[2] 100

# get second intercept (r2)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute rotated ~ 0 rotated ~270 ~-$(pitch) run tp @s ^ ^ ^$(radius)
$execute store result score %vfxSlashCircle.$(id).r2 labyrinth.generic.x run data get entity @s Pos[0] 100
$execute store result score %vfxSlashCircle.$(id).r2 labyrinth.generic.y run data get entity @s Pos[1] 100
$execute store result score %vfxSlashCircle.$(id).r2 labyrinth.generic.z run data get entity @s Pos[2] 100

## Calculate Initial Values
# values with x,y,z
$function labyrinth:generic/vfx/slash_circle/calc_init {"objective":"labyrinth.generic.x","id":"$(id)"}
$function labyrinth:generic/vfx/slash_circle/calc_init {"objective":"labyrinth.generic.y","id":"$(id)"}
$function labyrinth:generic/vfx/slash_circle/calc_init {"objective":"labyrinth.generic.z","id":"$(id)"}

# compute step dist √(x^2 + y^2 + z^2)
$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.x = %vfxSlashCircle.$(id).step labyrinth.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.y = %vfxSlashCircle.$(id).step labyrinth.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.z = %vfxSlashCircle.$(id).step labyrinth.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.x *= %vfxSlashCircle.$(id).step^2 labyrinth.generic.x 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.y *= %vfxSlashCircle.$(id).step^2 labyrinth.generic.y 
$scoreboard players operation %vfxSlashCircle.$(id).step^2 labyrinth.generic.z *= %vfxSlashCircle.$(id).step^2 labyrinth.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).dist labyrinth.generic.constant = %vfxSlashCircle.$(id).step^2 labyrinth.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).dist labyrinth.generic.constant += %vfxSlashCircle.$(id).step^2 labyrinth.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).dist labyrinth.generic.constant += %vfxSlashCircle.$(id).step^2 labyrinth.generic.z

$scoreboard players operation %vfxSlashCircle.$(id).in labyrinth.generic.math = %vfxSlashCircle.$(id).dist labyrinth.generic.constant
$scoreboard players set %vfxSlashCircle.$(id).raphA labyrinth.generic.math 1255
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).raphA labyrinth.generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.$(id).raphA labyrinth.generic.math *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).dist labyrinth.generic.constant = %vfxSlashCircle.$(id).raphA labyrinth.generic.math

# compute exact total diameter
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist labyrinth.generic.constant = %vfxSlashCircle.$(id).dist labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlDist labyrinth.generic.constant *= %vfxSlashCircle.$(id).accuracy labyrinth.generic.constant

# compute exact total radius
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius labyrinth.generic.constant = %vfxSlashCircle.$(id).ttlDist labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius labyrinth.generic.constant /= %vfxSlashCircle.$(id).2 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 labyrinth.generic.constant = %vfxSlashCircle.$(id).ttlRadius labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).ttlRadius-1 labyrinth.generic.constant *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant

# initialize x
$scoreboard players operation %vfxSlashCircle.$(id).x labyrinth.generic.dz = %vfxSlashCircle.$(id).ttlRadius-1 labyrinth.generic.constant