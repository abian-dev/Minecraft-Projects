# example call: function kits:generic/functions/raycast_mode/ignore_all/step {"hitEnd":"$(hitEnd)","vfx":"$(vfx)"}
## Raycast: Ignore All Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s kits.generic.raycast.step matches 0 run return run $(hitEnd)

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
$execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function kits:generic/functions/raycast_mode/ignore_all/step {"hitEnd":"$(hitEnd)","vfx":"$(vfx)"}