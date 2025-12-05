## Runs Domain Expansion
$scoreboard players operation %vfxDomain.$(id).speed generic.z = %vfxDomain.$(id).speed generic.constant
$execute if entity @s[tag=!vfxDomainFullSphere] run function src:generic/vfx/domain/draw_sphere with storage minecraft:vfx domain.$(id)
$execute if entity @s[tag=vfxDomainFullSphere] run function src:generic/vfx/domain/end with storage minecraft:vfx domain.$(id)