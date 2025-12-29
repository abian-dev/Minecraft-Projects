## Runs Rotating Vertical - General
# switch rotation direction appropriately
execute if entity @s[x_rotation=-90] run function labyrinth:generic/vfx/rotating_vertical/general/switch
execute if entity @s[x_rotation=90] run function labyrinth:generic/vfx/rotating_vertical/general/switch

# rotation
$execute if score @s labyrinth.generic.z matches -1 run execute at @s run function labyrinth:generic/vfx/rotating_vertical/general/rot_up with storage minecraft:labyrinth.vfx rotatingVertical.$(id)
$execute if score @s labyrinth.generic.z matches 1 run execute at @s run function labyrinth:generic/vfx/rotating_vertical/general/rot_down with storage minecraft:labyrinth.vfx rotatingVertical.$(id)

# duration
$scoreboard players remove %vfxRotatingVertical.$(id).duration labyrinth.generic.z 1
$execute if score %vfxRotatingVertical.$(id).duration labyrinth.generic.z matches ..0 run function labyrinth:generic/vfx/rotating_vertical/general/end with storage minecraft:labyrinth.vfx rotatingVertical.$(id)