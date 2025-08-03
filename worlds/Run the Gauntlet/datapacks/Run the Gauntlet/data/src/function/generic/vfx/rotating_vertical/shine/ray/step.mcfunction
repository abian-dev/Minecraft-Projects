## Shine Ray Step Function
# vfx
$particle $(particle) ~ ~ ~ 0 0 0 0 1 force

# recursive call
scoreboard players remove @s generic.raycast.step 1
$execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^$(inaccuracy) run function src:generic/vfx/rotating_vertical/shine/ray/step with storage minecraft:vfx shine