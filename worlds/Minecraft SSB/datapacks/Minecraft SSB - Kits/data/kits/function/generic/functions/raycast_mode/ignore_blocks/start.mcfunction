# note: add "function none" in the macro parameters if no action is needed
# example call: function kits:generic/functions/raycast_mode/ignore_blocks/start {"length":"100","hitEnd":"function","hitEntity":"function","vfx":"function"}
## Raycast: Ignore Blocks Start Function
# run raycast
$scoreboard players set @s kits.generic.raycast.step $(length)
tag @s add genericRaycaster
$function kits:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s kits.generic.raycast.step
tag @s remove genericRaycaster