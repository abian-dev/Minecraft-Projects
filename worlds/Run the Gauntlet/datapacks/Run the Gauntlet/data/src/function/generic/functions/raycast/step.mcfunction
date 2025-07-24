# example call: function src:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Raycast Step Function
# vfx
$$(vfx)

# collision check
$execute if score @s generic.raycast.step matches 0 run return run $(hitEnd)
execute positioned ^ ^ ^0.5 run function src:generic/functions/raycast/check_block
$execute if score @s generic.raycast.step matches -1 run return run function src:generic/functions/raycast/hit_block {"hitBlock":"$(hitBlock)"}
$execute if entity @e[distance=..2,type=!#src:non_entity,tag=!genericRaycaster] run return run function src:generic/functions/raycast/hit_entity {"hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s generic.raycast.step 1
$execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function src:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}