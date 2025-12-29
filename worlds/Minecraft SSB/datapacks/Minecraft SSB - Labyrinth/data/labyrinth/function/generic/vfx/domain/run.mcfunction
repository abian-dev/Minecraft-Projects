## Runs Domain Expansion
$scoreboard players operation %vfxDomain.$(id).speed labyrinth.generic.z = %vfxDomain.$(id).speed labyrinth.generic.constant
$execute if entity @s[tag=!vfxDomainFullSphere] run function labyrinth:generic/vfx/domain/draw_sphere with storage minecraft:labyrinth.vfx domain.$(id)
$execute if entity @s[tag=vfxDomainFullSphere] run function labyrinth:generic/vfx/domain/end with storage minecraft:labyrinth.vfx domain.$(id)