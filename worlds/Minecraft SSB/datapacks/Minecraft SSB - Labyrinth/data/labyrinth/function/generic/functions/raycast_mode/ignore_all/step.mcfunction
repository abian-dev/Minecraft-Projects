# example call: function labyrinth:generic/functions/raycast_mode/ignore_all/step {"hitEnd":"$(hitEnd)","vfx":"$(vfx)"}
## Raycast: Ignore All Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s labyrinth.generic.raycast.step matches 0 run return run $(hitEnd)

# recursive call
scoreboard players remove @s labyrinth.generic.raycast.step 1
$execute if score @s labyrinth.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function labyrinth:generic/functions/raycast_mode/ignore_all/step {"hitEnd":"$(hitEnd)","vfx":"$(vfx)"}