## Runs Rotating Vertical - Shine
# shine rays
execute rotated ~ ~0 run function src:generic/vfx/rotating_vertical/shine/ray/start
execute rotated ~ ~90 run function src:generic/vfx/rotating_vertical/shine/ray/start
execute rotated ~ ~180 run function src:generic/vfx/rotating_vertical/shine/ray/start
execute rotated ~ ~270 run function src:generic/vfx/rotating_vertical/shine/ray/start

# switch rotation direction appropriately
execute if entity @s[x_rotation=-90] run function src:generic/vfx/rotating_vertical/shine/switch
execute if entity @s[x_rotation=90] run function src:generic/vfx/rotating_vertical/shine/switch

# rotation
execute if score @s generic.z matches -1 run execute at @s run function src:generic/vfx/rotating_vertical/shine/rot_up with storage minecraft:vfx shine
execute if score @s generic.z matches 1 run execute at @s run function src:generic/vfx/rotating_vertical/shine/rot_down with storage minecraft:vfx shine

# duration
scoreboard players remove %vfxShine.duration generic.z 1
execute if score %vfxShine.duration generic.z matches ..0 run function src:generic/vfx/rotating_vertical/shine/end