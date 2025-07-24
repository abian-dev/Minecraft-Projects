## Random Pos Step Function
# collision check
execute unless block ~ ~ ~ #src:passable run scoreboard players set %vfxSlashScatter.dist generic.z 0
execute if score %vfxSlashScatter.dist generic.z matches 0 run tp @s ~ ~ ~

# recursive call
scoreboard players remove %vfxSlashScatter.dist generic.z 1
$execute if score %vfxSlashScatter.dist generic.z matches 0.. positioned ^ ^ ^$(inaccuracy) run function src:generic/vfx/slash_scatter/pos {"inaccuracy":"$(inaccuracy)"}