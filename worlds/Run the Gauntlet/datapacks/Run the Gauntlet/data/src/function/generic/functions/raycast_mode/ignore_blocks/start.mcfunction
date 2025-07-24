# note: add "function none" in the macro parameters if no action is needed
# example call: function src:generic/functions/raycast_mode/ignore_blocks/start {"length":"100","hitEnd":"function","hitEntity":"function","vfx":"function"}
## Raycast: Ignore Blocks Start Function
# run raycast
$scoreboard players set @s generic.raycast.step $(length)
tag @s add genericRaycaster
$function src:generic/functions/raycast_mode/ignore_blocks/step {"hitEnd":"$(hitEnd)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s generic.raycast.step
tag @s remove genericRaycaster