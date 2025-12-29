# note: add "function none" in the macro parameters if no action is needed
# example call: function labyrinth:generic/functions/raycast/start {"length":"100","hitEnd":"function","hitBlock":"function","hitEntity":"function","vfx":"function"}
## Raycast Start Function
# run raycast
$scoreboard players set @s labyrinth.generic.raycast.step $(length)
tag @s add genericRaycaster
$function labyrinth:generic/functions/raycast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s labyrinth.generic.raycast.step
tag @s remove genericRaycaster