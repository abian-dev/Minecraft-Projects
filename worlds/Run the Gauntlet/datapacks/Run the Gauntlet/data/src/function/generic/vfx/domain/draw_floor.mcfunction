## Draws Floor
scoreboard players remove %vfxDomain.floorItt generic.z 1
$execute if block ~ ~0.5 ~ #src:passable unless block ~ ~-1.5 ~ #src:passable run particle $(particle) ~ ~-1 ~
$execute if score %vfxDomain.floorItt generic.z matches 0.. positioned ^ ^ ^$(inaccuracyPos) run function src:generic/vfx/domain/draw_floor with storage minecraft:vfx domain