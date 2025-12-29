# example call: function kits:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Raycast: Ignore Blocks Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s kits.generic.raycast.step matches 0 run return run $(hitEnd)
$execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!genericRaycaster] run return run function kits:generic/functions/raycast_mode/ignore_blocks/hit_entity {"hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
$execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}