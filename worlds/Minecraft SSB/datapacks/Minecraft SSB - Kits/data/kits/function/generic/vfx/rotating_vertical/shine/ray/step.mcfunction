## Shine Ray Step Function
# vfx
$particle $(particle) ~ ~ ~ 0 0 0 0 1 force

# recursive call
scoreboard players remove @s kits.generic.raycast.step 1
$execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^$(inaccuracy) run function kits:generic/vfx/rotating_vertical/shine/ray/step with storage minecraft:kits.vfx shine.$(id)