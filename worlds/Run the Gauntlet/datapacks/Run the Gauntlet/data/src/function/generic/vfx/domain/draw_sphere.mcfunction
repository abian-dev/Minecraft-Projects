# desmos: https://www.desmos.com/calculator/kiaohzn1k2
## Draws a Sphere
# calculate new circle radius
# currentRadius^2 = maxRadius^2 - newStep^2
scoreboard players operation %vfxDomain.newRadiusStep generic.z += %vfxDomain.radiusStep generic.z
scoreboard players operation %vfxDomain.circleRadius generic.z = %vfxDomain.radius generic.constant
scoreboard players operation %vfxDomain.circleRadius generic.z *= %vfxDomain.radius generic.constant
scoreboard players operation %vfxDomain.newRadiusStep^2 generic.z = %vfxDomain.newRadiusStep generic.z
scoreboard players operation %vfxDomain.newRadiusStep^2 generic.z *= %vfxDomain.newRadiusStep generic.z
scoreboard players operation %vfxDomain.circleRadius generic.z -= %vfxDomain.newRadiusStep^2 generic.z
execute if score %vfxDomain.circleRadius generic.z matches ..0 run tag @s add vfxDomainFullSphere

# square root
scoreboard players operation %vfxDomain.in generic.math = %vfxDomain.circleRadius generic.z
scoreboard players set %vfxDomain.raphA generic.math 1255
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
function src:generic/vfx/domain/newton_raphson
execute if score %vfxDomain.raphA generic.math matches ..0 run scoreboard players operation %vfxDomain.raphA generic.math *= %vfxDomain.-1 generic.constant
scoreboard players operation %vfxDomain.circleRadius generic.z = %vfxDomain.raphA generic.math
execute store result storage minecraft:vfx domain.circleRadius double 0.01 run scoreboard players get %vfxDomain.circleRadius generic.z

# adaptive step scaling
scoreboard players operation %vfxDomain.radiusStep generic.z = %vfxDomain.circleRadius generic.z
scoreboard players operation %vfxDomain.radiusStep generic.z *= %vfxDomain.10 generic.constant
scoreboard players operation %vfxDomain.radiusStep generic.z /= %vfxDomain.accuracy generic.constant
execute store result storage minecraft:vfx domain.radiusStep double 0.01 run scoreboard players get %vfxDomain.radiusStep generic.z

# draw circle
execute at @s run function src:generic/vfx/domain/draw_semicircle with storage minecraft:vfx domain
execute at @s run tp @s ~ ~ ~ ~180 -90
execute at @s run function src:generic/vfx/domain/draw_semicircle with storage minecraft:vfx domain
execute at @s run tp @s ~ ~ ~ ~180 -90

# draw floor
scoreboard players operation %vfxDomain.floorItt generic.z = %vfxDomain.circleRadius generic.z
scoreboard players operation %vfxDomain.floorItt generic.z += %vfxDomain.circleRadius generic.z
scoreboard players operation %vfxDomain.floorItt generic.z *= %vfxDomain.10 generic.constant
scoreboard players operation %vfxDomain.floorItt generic.z /= %vfxDomain.inaccuracy generic.constant
$execute at @s rotated ~ 0 positioned ^ ^ ^$(circleRadius) facing entity @s feet run function src:generic/vfx/domain/draw_floor with storage minecraft:vfx domain

# step forward
$execute rotated ~-90 0 run tp @s ^ ^ ^$(radiusStep)
scoreboard players remove %vfxDomain.speed generic.z 1
execute if score %vfxDomain.speed generic.z matches 0.. run execute at @s[tag=!vfxDomainFullSphere] run function src:generic/vfx/domain/draw_sphere with storage minecraft:vfx domain