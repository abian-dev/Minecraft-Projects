## Runs Rotating Vertical - Shine
# shine rays
$execute rotated ~ ~0 run function labyrinth:generic/vfx/rotating_vertical/shine/ray/start with storage minecraft:labyrinth.vfx shine.$(id)
$execute rotated ~ ~90 run function labyrinth:generic/vfx/rotating_vertical/shine/ray/start with storage minecraft:labyrinth.vfx shine.$(id)
$execute rotated ~ ~180 run function labyrinth:generic/vfx/rotating_vertical/shine/ray/start with storage minecraft:labyrinth.vfx shine.$(id)
$execute rotated ~ ~270 run function labyrinth:generic/vfx/rotating_vertical/shine/ray/start with storage minecraft:labyrinth.vfx shine.$(id)

# switch rotation direction appropriately
execute if entity @s[x_rotation=-90] run function labyrinth:generic/vfx/rotating_vertical/shine/switch
execute if entity @s[x_rotation=90] run function labyrinth:generic/vfx/rotating_vertical/shine/switch

# rotation
$execute if score @s labyrinth.generic.z matches -1 run execute at @s run function labyrinth:generic/vfx/rotating_vertical/shine/rot_up with storage minecraft:labyrinth.vfx shine.$(id)
$execute if score @s labyrinth.generic.z matches 1 run execute at @s run function labyrinth:generic/vfx/rotating_vertical/shine/rot_down with storage minecraft:labyrinth.vfx shine.$(id)

# duration
$scoreboard players remove %vfxShine.$(id).duration labyrinth.generic.z 1
$execute if score %vfxShine.$(id).duration labyrinth.generic.z matches ..0 run function labyrinth:generic/vfx/rotating_vertical/shine/end with storage minecraft:labyrinth.vfx shine.$(id)