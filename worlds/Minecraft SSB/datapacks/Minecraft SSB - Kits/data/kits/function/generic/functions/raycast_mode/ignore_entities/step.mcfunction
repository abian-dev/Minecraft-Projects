# example call: function kits:generic/functions/raycast_mode/ignore_entities/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","vfx":"$(vfx)"}
## Raycast: Ignore Entities Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s kits.generic.raycast.step matches 0 run return run $(hitEnd)
execute positioned ^ ^ ^0.5 run function kits:generic/functions/raycast_mode/ignore_entities/check_block
$execute if score @s kits.generic.raycast.step matches -1 run return run function kits:generic/functions/raycast_mode/ignore_entities/hit_block {"hitBlock":"$(hitBlock)"}

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
$execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/raycast_mode/ignore_entities/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","vfx":"$(vfx)"}