## Slash Forward Step Function
# vfx
$$(vfx)

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.generic.raycast.step 0
$execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^$(inaccuracy) run function kits:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}