## Draws Floor
$scoreboard players remove %vfxDomain.$(id).floorItt kits.generic.z 1
$execute if block ~ ~0.5 ~ #kits:passable unless block ~ ~-1.5 ~ #kits:passable run particle $(particle) ~ ~-1 ~ 0 0 0 0 1 force
$execute if score %vfxDomain.$(id).floorItt kits.generic.z matches 0.. positioned ^ ^ ^$(inaccuracyPos) run function kits:generic/vfx/domain/draw_floor with storage minecraft:kits.vfx domain.$(id)