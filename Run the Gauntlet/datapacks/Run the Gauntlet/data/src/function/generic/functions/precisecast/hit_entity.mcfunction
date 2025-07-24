# example call: function src:generic/functions/precisecast/hit_entity {"hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)"}
## Precisecast Hit Entity Function
# detect humanoid
$execute if entity @s[type=#src:humanoid] run function src:generic/functions/precisecast/hit_entity/humanoid {"hitHead":"$(hitHead)","hitBody":"$(hitBody)","hitLegs":"$(hitLegs)"}
$execute if entity @s[type=!#src:humanoid] run function src:generic/functions/precisecast/hit_entity/body {"hitBody":"$(hitBody)"}

# stop ray
scoreboard players set @e[tag=genericPrecisecaster] generic.raycast.step 0