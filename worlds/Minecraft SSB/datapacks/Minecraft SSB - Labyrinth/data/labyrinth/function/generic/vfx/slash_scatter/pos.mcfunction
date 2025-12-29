## Random Pos Step Function
# collision check
execute unless block ~ ~ ~ #labyrinth:passable run scoreboard players set %vfxSlashScatter.dist labyrinth.generic.z 0
execute if score %vfxSlashScatter.dist labyrinth.generic.z matches 0 run tp @s ~ ~ ~

# recursive call
scoreboard players remove %vfxSlashScatter.dist labyrinth.generic.z 1
$execute if score %vfxSlashScatter.dist labyrinth.generic.z matches 0.. positioned ^ ^ ^$(inaccuracy) run function labyrinth:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}