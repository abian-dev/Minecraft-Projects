# desmos: https://www.desmos.com/calculator/kiaohzn1k2
## Draws a Sphere
# calculate new circle radius
# currentRadius^2 = maxRadius^2 - newStep^2
$scoreboard players operation %vfxDomain.$(id).newRadiusStep generic.z += %vfxDomain.$(id).radiusStep generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius generic.z = %vfxDomain.$(id).radius generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius generic.z *= %vfxDomain.$(id).radius generic.constant
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 generic.z = %vfxDomain.$(id).newRadiusStep generic.z
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 generic.z *= %vfxDomain.$(id).newRadiusStep generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius generic.z -= %vfxDomain.$(id).newRadiusStep^2 generic.z
$execute if score %vfxDomain.$(id).circleRadius generic.z matches ..0 run tag @s add vfxDomainFullSphere

# square root
$scoreboard players operation %vfxDomain.$(id).in generic.math = %vfxDomain.$(id).circleRadius generic.z
$scoreboard players set %vfxDomain.$(id).raphA generic.math 1255
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$function src:generic/vfx/domain/newton_raphson with storage minecraft:vfx domain.$(id)
$execute if score %vfxDomain.$(id).raphA generic.math matches ..0 run scoreboard players operation %vfxDomain.$(id).raphA generic.math *= %vfxDomain.$(id).-1 generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius generic.z = %vfxDomain.$(id).raphA generic.math
$execute store result storage minecraft:vfx domain.$(id).circleRadius double 0.01 run scoreboard players get %vfxDomain.$(id).circleRadius generic.z

# adaptive step scaling
$scoreboard players operation %vfxDomain.$(id).radiusStep generic.z = %vfxDomain.$(id).circleRadius generic.z
$scoreboard players operation %vfxDomain.$(id).radiusStep generic.z *= %vfxDomain.$(id).10 generic.constant
$scoreboard players operation %vfxDomain.$(id).radiusStep generic.z /= %vfxDomain.$(id).accuracy generic.constant
$execute store result storage minecraft:vfx domain.$(id).radiusStep double 0.01 run scoreboard players get %vfxDomain.$(id).radiusStep generic.z

# draw circle
$execute at @s run function src:generic/vfx/domain/draw_semicircle with storage minecraft:vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90
$execute at @s run function src:generic/vfx/domain/draw_semicircle with storage minecraft:vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90

# draw floor
$scoreboard players operation %vfxDomain.$(id).floorItt generic.z = %vfxDomain.$(id).circleRadius generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt generic.z += %vfxDomain.$(id).circleRadius generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt generic.z *= %vfxDomain.$(id).10 generic.constant
$scoreboard players operation %vfxDomain.$(id).floorItt generic.z /= %vfxDomain.$(id).inaccuracy generic.constant
$execute at @s rotated ~ 0 positioned ^ ^ ^$(circleRadius) facing entity @s feet run function src:generic/vfx/domain/draw_floor with storage minecraft:vfx domain.$(id)

# step forward
$execute rotated ~-90 0 run tp @s ^ ^ ^$(radiusStep)
$scoreboard players remove %vfxDomain.$(id).speed generic.z 1
$execute if score %vfxDomain.$(id).speed generic.z matches 0.. run execute at @s[tag=!vfxDomainFullSphere] run function src:generic/vfx/domain/draw_sphere with storage minecraft:vfx domain.$(id)