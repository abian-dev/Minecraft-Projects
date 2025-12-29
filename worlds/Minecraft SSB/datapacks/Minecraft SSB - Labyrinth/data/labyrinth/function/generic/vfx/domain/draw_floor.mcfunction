## Draws Floor
$scoreboard players remove %vfxDomain.$(id).floorItt labyrinth.generic.z 1
$execute if block ~ ~0.5 ~ #labyrinth:passable unless block ~ ~-1.5 ~ #labyrinth:passable run particle $(particle) ~ ~-1 ~ 0 0 0 0 1 force
$execute if score %vfxDomain.$(id).floorItt labyrinth.generic.z matches 0.. positioned ^ ^ ^$(inaccuracyPos) run function labyrinth:generic/vfx/domain/draw_floor with storage minecraft:labyrinth.vfx domain.$(id)