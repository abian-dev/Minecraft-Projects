# desmos: https://www.desmos.com/calculator/kiaohzn1k2
## Draws a Sphere
# calculate new circle radius
# currentRadius^2 = maxRadius^2 - newStep^2
$scoreboard players operation %vfxDomain.$(id).newRadiusStep kits.generic.z += %vfxDomain.$(id).radiusStep kits.generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius kits.generic.z = %vfxDomain.$(id).radius kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius kits.generic.z *= %vfxDomain.$(id).radius kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 kits.generic.z = %vfxDomain.$(id).newRadiusStep kits.generic.z
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 kits.generic.z *= %vfxDomain.$(id).newRadiusStep kits.generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius kits.generic.z -= %vfxDomain.$(id).newRadiusStep^2 kits.generic.z
$execute if score %vfxDomain.$(id).circleRadius kits.generic.z matches ..0 run tag @s add vfxDomainFullSphere

# square root
$scoreboard players operation %vfxDomain.$(id).in kits.generic.math = %vfxDomain.$(id).circleRadius kits.generic.z
$scoreboard players set %vfxDomain.$(id).raphA kits.generic.math 1255
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$function kits:generic/vfx/domain/newton_raphson with storage minecraft:kits.vfx domain.$(id)
$execute if score %vfxDomain.$(id).raphA kits.generic.math matches ..0 run scoreboard players operation %vfxDomain.$(id).raphA kits.generic.math *= %vfxDomain.$(id).-1 kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius kits.generic.z = %vfxDomain.$(id).raphA kits.generic.math
$execute store result storage minecraft:kits.vfx domain.$(id).circleRadius double 0.01 run scoreboard players get %vfxDomain.$(id).circleRadius kits.generic.z

# adaptive step scaling
$scoreboard players operation %vfxDomain.$(id).radiusStep kits.generic.z = %vfxDomain.$(id).circleRadius kits.generic.z
$scoreboard players operation %vfxDomain.$(id).radiusStep kits.generic.z *= %vfxDomain.$(id).10 kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).radiusStep kits.generic.z /= %vfxDomain.$(id).accuracy kits.generic.constant
$execute store result storage minecraft:kits.vfx domain.$(id).radiusStep double 0.01 run scoreboard players get %vfxDomain.$(id).radiusStep kits.generic.z

# draw circle
$execute at @s run function kits:generic/vfx/domain/draw_semicircle with storage minecraft:kits.vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90
$execute at @s run function kits:generic/vfx/domain/draw_semicircle with storage minecraft:kits.vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90

# draw floor
$scoreboard players operation %vfxDomain.$(id).floorItt kits.generic.z = %vfxDomain.$(id).circleRadius kits.generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt kits.generic.z += %vfxDomain.$(id).circleRadius kits.generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt kits.generic.z *= %vfxDomain.$(id).10 kits.generic.constant
$scoreboard players operation %vfxDomain.$(id).floorItt kits.generic.z /= %vfxDomain.$(id).inaccuracy kits.generic.constant
$execute at @s rotated ~ 0 positioned ^ ^ ^$(circleRadius) facing entity @s feet run function kits:generic/vfx/domain/draw_floor with storage minecraft:kits.vfx domain.$(id)

# step forward
$execute rotated ~-90 0 run tp @s ^ ^ ^$(radiusStep)
$scoreboard players remove %vfxDomain.$(id).speed kits.generic.z 1
$execute if score %vfxDomain.$(id).speed kits.generic.z matches 0.. run execute at @s[tag=!vfxDomainFullSphere] run function kits:generic/vfx/domain/draw_sphere with storage minecraft:kits.vfx domain.$(id)