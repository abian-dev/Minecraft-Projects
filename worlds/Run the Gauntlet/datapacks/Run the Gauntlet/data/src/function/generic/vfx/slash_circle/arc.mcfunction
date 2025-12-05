## Draws a Circle
# x pos along diameter:		x = -R += step
# circle function:			y = ±√(R^2 - x^2)
# compute x
$scoreboard players operation %vfxSlashCircle.$(id).x generic.dz += %vfxSlashCircle.$(id).dist generic.constant

# compute y section: R^2
$scoreboard players operation %vfxSlashCircle.$(id).R^2 generic.dz = %vfxSlashCircle.$(id).ttlRadius generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).R^2 generic.dz *= %vfxSlashCircle.$(id).R^2 generic.dz

# compute y section: x^2
$scoreboard players operation %vfxSlashCircle.$(id).x^2 generic.dz = %vfxSlashCircle.$(id).x generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).x^2 generic.dz *= %vfxSlashCircle.$(id).x generic.dz

# compute y section: R^2 - x^2
$scoreboard players operation %vfxSlashCircle.$(id).y generic.dz = %vfxSlashCircle.$(id).R^2 generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).y generic.dz -= %vfxSlashCircle.$(id).x^2 generic.dz

# compute y section: ±√
$scoreboard players operation %vfxSlashCircle.$(id).in generic.math = %vfxSlashCircle.$(id).y generic.dz
$scoreboard players set %vfxSlashCircle.$(id).raphA generic.math 1255
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$function src:generic/vfx/slash_circle/newton_raphson with storage minecraft:vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).raphA generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.$(id).raphA generic.math *= %vfxSlashCircle.$(id).-1 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).y generic.dz = %vfxSlashCircle.$(id).raphA generic.math
$scoreboard players operation %vfxSlashCircle.$(id).y generic.dz *= %vfxSlashCircle.$(id).sign generic.dz

## Computes thickness
# progress along the path:	t = arcSteps(s) / maxSteps(M)
# bump function:			B(t) = 4t(1-t), t∈[0,1]
# substitute & scale 100:	B(t) = [4s(M - s) * 100] / [M^2]
# M - s
$scoreboard players operation %vfxSlashCircle.$(id).M-s generic.dz = %vfxSlashCircle.$(id).maxSteps generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).M-s generic.dz -= %vfxSlashCircle.$(id).arcSteps generic.dz

# Bnum = 4 * s * (M - s) * 100
$scoreboard players operation %vfxSlashCircle.$(id).Bnum generic.dz = %vfxSlashCircle.$(id).arcSteps generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bnum generic.dz *= %vfxSlashCircle.$(id).M-s generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bnum generic.dz *= %vfxSlashCircle.$(id).4 generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).Bnum generic.dz *= %vfxSlashCircle.$(id).100 generic.constant

# Bden = M^2
$scoreboard players operation %vfxSlashCircle.$(id).Bden generic.dz = %vfxSlashCircle.$(id).maxSteps generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).Bden generic.dz *= %vfxSlashCircle.$(id).Bden generic.dz

# compute how strong (0–100%) should the thickness be at this step (B(t))
$scoreboard players operation %vfxSlashCircle.$(id).Bt generic.dz = %vfxSlashCircle.$(id).Bnum generic.dz
$scoreboard players operation %vfxSlashCircle.$(id).Bt generic.dz /= %vfxSlashCircle.$(id).Bden generic.dz

# convert strength into actual integer radius (thicknessAtStep)
$scoreboard players operation %vfxSlashCircle.$(id).thicknessAtStep generic.dz = %vfxSlashCircle.$(id).thickness generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).thicknessAtStep generic.dz *= %vfxSlashCircle.$(id).Bt generic.dz

## Store results
$execute store result storage minecraft:vfx slashCircle.$(id).y double 0.01 run scoreboard players get %vfxSlashCircle.$(id).y generic.dz