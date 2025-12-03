## Draws a Circle
# x pos along diameter:		x = -R += step
# circle function:			y = ±√(R^2 - x^2)
# compute x
scoreboard players operation %vfxSlashCircle.x generic.dz += %vfxSlashCircle.dist generic.constant

# compute y section: R^2
scoreboard players operation %vfxSlashCircle.R^2 generic.dz = %vfxSlashCircle.ttlRadius generic.constant
scoreboard players operation %vfxSlashCircle.R^2 generic.dz *= %vfxSlashCircle.R^2 generic.dz

# compute y section: x^2
scoreboard players operation %vfxSlashCircle.x^2 generic.dz = %vfxSlashCircle.x generic.dz
scoreboard players operation %vfxSlashCircle.x^2 generic.dz *= %vfxSlashCircle.x generic.dz

# compute y section: R^2 - x^2
scoreboard players operation %vfxSlashCircle.y generic.dz = %vfxSlashCircle.R^2 generic.dz
scoreboard players operation %vfxSlashCircle.y generic.dz -= %vfxSlashCircle.x^2 generic.dz

# compute y section: ±√
scoreboard players operation %vfxSlashCircle.in generic.math = %vfxSlashCircle.y generic.dz
scoreboard players set %vfxSlashCircle.raphA generic.math 1255
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
function src:generic/vfx/slash_circle/newton_raphson
execute if score %vfxSlashCircle.raphA generic.math matches ..0 run scoreboard players operation %vfxSlashCircle.raphA generic.math *= %vfxSlashCircle.-1 generic.constant
scoreboard players operation %vfxSlashCircle.y generic.dz = %vfxSlashCircle.raphA generic.math
scoreboard players operation %vfxSlashCircle.y generic.dz *= %vfxSlashCircle.sign generic.dz

## Computes thickness
# progress along the path:	t = arcSteps(s) / maxSteps(M)
# bump function:			B(t) = 4t(1-t), t∈[0,1]
# substitute & scale 100:	B(t) = [4s(M - s) * 100] / [M^2]
# M - s
scoreboard players operation %vfxSlashCircle.M-s generic.dz = %vfxSlashCircle.maxSteps generic.constant
scoreboard players operation %vfxSlashCircle.M-s generic.dz -= %vfxSlashCircle.arcSteps generic.dz

# Bnum = 4 * s * (M - s) * 100
scoreboard players operation %vfxSlashCircle.Bnum generic.dz = %vfxSlashCircle.arcSteps generic.dz
scoreboard players operation %vfxSlashCircle.Bnum generic.dz *= %vfxSlashCircle.M-s generic.dz
scoreboard players operation %vfxSlashCircle.Bnum generic.dz *= %vfxSlashCircle.4 generic.constant
scoreboard players operation %vfxSlashCircle.Bnum generic.dz *= %vfxSlashCircle.100 generic.constant

# Bden = M^2
scoreboard players operation %vfxSlashCircle.Bden generic.dz = %vfxSlashCircle.maxSteps generic.constant
scoreboard players operation %vfxSlashCircle.Bden generic.dz *= %vfxSlashCircle.Bden generic.dz

# compute how strong (0–100%) should the thickness be at this step (B(t))
scoreboard players operation %vfxSlashCircle.Bt generic.dz = %vfxSlashCircle.Bnum generic.dz
scoreboard players operation %vfxSlashCircle.Bt generic.dz /= %vfxSlashCircle.Bden generic.dz

# convert strength into actual integer radius (thicknessAtStep)
scoreboard players operation %vfxSlashCircle.thicknessAtStep generic.dz = %vfxSlashCircle.thickness generic.constant
scoreboard players operation %vfxSlashCircle.thicknessAtStep generic.dz *= %vfxSlashCircle.Bt generic.dz

## Store results
execute store result storage minecraft:vfx slashCircle.y double 0.01 run scoreboard players get %vfxSlashCircle.y generic.dz