## Runs Domain Expansion
$scoreboard players operation %vfxDomain.$(id).speed kits.generic.z = %vfxDomain.$(id).speed kits.generic.constant
$execute if entity @s[tag=!vfxDomainFullSphere] run function kits:generic/vfx/domain/draw_sphere with storage minecraft:kits.vfx domain.$(id)
$execute if entity @s[tag=vfxDomainFullSphere] run function kits:generic/vfx/domain/end with storage minecraft:kits.vfx domain.$(id)