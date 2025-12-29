# desmos: https://www.desmos.com/calculator/kiaohzn1k2
## Draws a Sphere
# calculate new circle radius
# currentRadius^2 = maxRadius^2 - newStep^2
$scoreboard players operation %vfxDomain.$(id).newRadiusStep labyrinth.generic.z += %vfxDomain.$(id).radiusStep labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius labyrinth.generic.z = %vfxDomain.$(id).radius labyrinth.generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius labyrinth.generic.z *= %vfxDomain.$(id).radius labyrinth.generic.constant
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 labyrinth.generic.z = %vfxDomain.$(id).newRadiusStep labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).newRadiusStep^2 labyrinth.generic.z *= %vfxDomain.$(id).newRadiusStep labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).circleRadius labyrinth.generic.z -= %vfxDomain.$(id).newRadiusStep^2 labyrinth.generic.z
$execute if score %vfxDomain.$(id).circleRadius labyrinth.generic.z matches ..0 run tag @s add vfxDomainFullSphere

# square root
$scoreboard players operation %vfxDomain.$(id).in labyrinth.generic.math = %vfxDomain.$(id).circleRadius labyrinth.generic.z
$scoreboard players set %vfxDomain.$(id).raphA labyrinth.generic.math 1255
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$function labyrinth:generic/vfx/domain/newton_raphson with storage minecraft:labyrinth.vfx domain.$(id)
$execute if score %vfxDomain.$(id).raphA labyrinth.generic.math matches ..0 run scoreboard players operation %vfxDomain.$(id).raphA labyrinth.generic.math *= %vfxDomain.$(id).-1 labyrinth.generic.constant
$scoreboard players operation %vfxDomain.$(id).circleRadius labyrinth.generic.z = %vfxDomain.$(id).raphA labyrinth.generic.math
$execute store result storage minecraft:labyrinth.vfx domain.$(id).circleRadius double 0.01 run scoreboard players get %vfxDomain.$(id).circleRadius labyrinth.generic.z

# adaptive step scaling
$scoreboard players operation %vfxDomain.$(id).radiusStep labyrinth.generic.z = %vfxDomain.$(id).circleRadius labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).radiusStep labyrinth.generic.z *= %vfxDomain.$(id).10 labyrinth.generic.constant
$scoreboard players operation %vfxDomain.$(id).radiusStep labyrinth.generic.z /= %vfxDomain.$(id).accuracy labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx domain.$(id).radiusStep double 0.01 run scoreboard players get %vfxDomain.$(id).radiusStep labyrinth.generic.z

# draw circle
$execute at @s run function labyrinth:generic/vfx/domain/draw_semicircle with storage minecraft:labyrinth.vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90
$execute at @s run function labyrinth:generic/vfx/domain/draw_semicircle with storage minecraft:labyrinth.vfx domain.$(id)
execute at @s run tp @s ~ ~ ~ ~180 -90

# draw floor
$scoreboard players operation %vfxDomain.$(id).floorItt labyrinth.generic.z = %vfxDomain.$(id).circleRadius labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt labyrinth.generic.z += %vfxDomain.$(id).circleRadius labyrinth.generic.z
$scoreboard players operation %vfxDomain.$(id).floorItt labyrinth.generic.z *= %vfxDomain.$(id).10 labyrinth.generic.constant
$scoreboard players operation %vfxDomain.$(id).floorItt labyrinth.generic.z /= %vfxDomain.$(id).inaccuracy labyrinth.generic.constant
$execute at @s rotated ~ 0 positioned ^ ^ ^$(circleRadius) facing entity @s feet run function labyrinth:generic/vfx/domain/draw_floor with storage minecraft:labyrinth.vfx domain.$(id)

# step forward
$execute rotated ~-90 0 run tp @s ^ ^ ^$(radiusStep)
$scoreboard players remove %vfxDomain.$(id).speed labyrinth.generic.z 1
$execute if score %vfxDomain.$(id).speed labyrinth.generic.z matches 0.. run execute at @s[tag=!vfxDomainFullSphere] run function labyrinth:generic/vfx/domain/draw_sphere with storage minecraft:labyrinth.vfx domain.$(id)