# note: add "function none" in the macro parameters if no action is needed
# example call: function kits:generic/functions/raycast_mode/ignore_all/start {"length":"100","hitEnd":"function","vfx":"function"}
## Raycast: Ignore All Start Function
# run raycast
$scoreboard players set @s kits.generic.raycast.step $(length)
tag @s add genericRaycaster
$function kits:generic/functions/raycast_mode/ignore_all/step {"hitEnd":"$(hitEnd)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s kits.generic.raycast.step
tag @s remove genericRaycaster