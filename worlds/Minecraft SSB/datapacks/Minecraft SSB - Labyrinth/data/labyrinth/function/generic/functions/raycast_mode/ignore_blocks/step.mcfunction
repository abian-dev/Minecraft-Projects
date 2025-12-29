# example call: function labyrinth:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Raycast: Ignore Blocks Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s labyrinth.generic.raycast.step matches 0 run return run $(hitEnd)
$execute if entity @e[distance=..2,type=!#labyrinth:non_entity,tag=!genericRaycaster] run return run function labyrinth:generic/functions/raycast_mode/ignore_blocks/hit_entity {"hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s labyrinth.generic.raycast.step 1
$execute if score @s labyrinth.generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function labyrinth:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}