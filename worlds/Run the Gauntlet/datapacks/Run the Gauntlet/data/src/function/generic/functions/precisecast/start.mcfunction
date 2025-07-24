# note: add "function none" in the macro parameters if no action is needed
# example call: function src:generic/functions/precisecast/start {"length":"100","hitEnd":"function","hitBlock":"function","hitHead":"function","hitBody":"function","hitLegs":"function","vfx":"function"}
## Precisecast Start Function
# run raycast
$scoreboard players set @s generic.raycast.step $(length)
tag @s add genericPrecisecaster
$function src:generic/functions/precisecast/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s generic.raycast.step
tag @s remove genericPrecisecaster