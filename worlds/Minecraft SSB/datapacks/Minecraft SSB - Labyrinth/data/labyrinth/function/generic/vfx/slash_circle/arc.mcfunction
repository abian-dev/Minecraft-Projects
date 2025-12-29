## Draws a Circle
# x pos along diameter:		x = -R += step
# circle function:			y = ±√(R^2 - x^2)
# compute x
$scoreboard players operation %vfxSlashCircle.$(id).x labyrinth.generic.dz += %vfxSlashCircle.$(id).dist labyrinth.generic.constant

# compute y section: R^2
$scoreboard players operation %vfxSlashCircle.$(id).R^2 labyrinth.generic.dz = %vfxSlashCircle.$(id).ttlRadius labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).R^2 labyrinth.generic.dz *= %vfxSlashCircle.$(id).R^2 labyrinth.generic.dz

# compute y section: x^2
$scoreboard players operation %vfxSlashCircle.$(id).x^2 labyrinth.generic.dz = %vfxSlashCircle.$(id).x labyrinth.generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).x^2 labyrinth.generic.dz *= %vfxSlashCircle.$(id).x labyrinth.generic.dz

# compute y section: R^2 - x^2
$scoreboard players operation %vfxSlashCircle.$(id).y labyrinth.generic.dz = %vfxSlashCircle.$(id).R^2 labyrinth.generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).y labyrinth.generic.dz -= %vfxSlashCircle.$(id).x^2 labyrinth.generic.dz

# compute y section: ±√
$scoreboard players operation %vfxSlashCircle.$(id).in labyrinth.generic.math = %vfxSlashCircle.$(id).y labyrinth.generic.dz
$scoreboard players set %vfxSlashCircle.$(id).raphA labyrinth.generic.math 1255
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$function labyrinth:generic/vfx/slash_circle/newton_raphson with storage minecraft:labyrinth.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).raphA labyrinth.generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.$(id).raphA labyrinth.generic.math *= %vfxSlashCircle.$(id).-1 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).y labyrinth.generic.dz = %vfxSlashCircle.$(id).raphA labyrinth.generic.math
$scoreboard players operation %vfxSlashCircle.$(id).y labyrinth.generic.dz *= %vfxSlashCircle.$(id).sign labyrinth.generic.dz

## Computes thickness
# progress along the path:	t = arcSteps(s) / maxSteps(M)
# bump function:			B(t) = 4t(1-t), t∈[0,1]
# substitute & scale 100:	B(t) = [4s(M - s) * 100] / [M^2]
# M - s
$scoreboard players operation %vfxSlashCircle.$(id).M-s labyrinth.generic.dz = %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).M-s labyrinth.generic.dz -= %vfxSlashCircle.$(id).arcSteps labyrinth.generic.dz

# Bnum = 4 * s * (M - s) * 100
$scoreboard players operation %vfxSlashCircle.$(id).Bnum labyrinth.generic.dz = %vfxSlashCircle.$(id).arcSteps labyrinth.generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bnum labyrinth.generic.dz *= %vfxSlashCircle.$(id).M-s labyrinth.generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bnum labyrinth.generic.dz *= %vfxSlashCircle.$(id).4 labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).Bnum labyrinth.generic.dz *= %vfxSlashCircle.$(id).100 labyrinth.generic.constant

# Bden = M^2
$scoreboard players operation %vfxSlashCircle.$(id).Bden labyrinth.generic.dz = %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).Bden labyrinth.generic.dz *= %vfxSlashCircle.$(id).Bden labyrinth.generic.dz

# compute how strong (0–100%) should the thickness be at this step (B(t))
$scoreboard players operation %vfxSlashCircle.$(id).Bt labyrinth.generic.dz = %vfxSlashCircle.$(id).Bnum labyrinth.generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bt labyrinth.generic.dz /= %vfxSlashCircle.$(id).Bden labyrinth.generic.dz

# convert strength into actual integer radius (thicknessAtStep)
$scoreboard players operation %vfxSlashCircle.$(id).thicknessAtStep labyrinth.generic.dz = %vfxSlashCircle.$(id).thickness labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).thicknessAtStep labyrinth.generic.dz *= %vfxSlashCircle.$(id).Bt labyrinth.generic.dz

## Store results
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).y double 0.01 run scoreboard players get %vfxSlashCircle.$(id).y labyrinth.generic.dz