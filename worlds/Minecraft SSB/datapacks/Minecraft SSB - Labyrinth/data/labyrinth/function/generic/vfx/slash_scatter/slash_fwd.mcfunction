## Slash Forward Step Function
# vfx
$$(vfx)

# recursive call
scoreboard players remove @s labyrinth.generic.raycast.step 1
execute unless block ~ ~ ~ #labyrinth:passable run scoreboard players set @s labyrinth.generic.raycast.step 0
$execute if score @s labyrinth.generic.raycast.step matches 0.. positioned ^ ^ ^$(inaccuracy) run function labyrinth:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}