## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s generic.x = %vfxSlashEncircle.px generic.x
scoreboard players operation @s generic.y = %vfxSlashEncircle.py generic.y
scoreboard players operation @s generic.x -= %vfxSlashEncircle.x generic.x
scoreboard players operation @s generic.y -= %vfxSlashEncircle.y generic.y

# rotate toward point
$execute unless entity @s[scores={generic.x=-$(yaw)..$(yaw)}] run scoreboard players operation %vfxSlashEncircle.x generic.x += %vfxSlashEncircle.vx generic.x
$execute unless entity @s[scores={generic.y=-$(pitch)..$(pitch)}] run scoreboard players operation %vfxSlashEncircle.y generic.y += %vfxSlashEncircle.vy generic.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxSlashEncircle.x generic.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxSlashEncircle.y generic.y

# particles
$execute at @s run $(vfx)

# recurse until pos is close to point
scoreboard players reset @s generic.z
scoreboard players operation @s generic.z += @s generic.x
scoreboard players operation @s generic.z += @s generic.y
$execute if entity @s[scores={generic.z=-$(rotMaxRange)..$(rotMaxRange)}] run function src:generic/vfx/slash_encircle/end
$execute unless entity @s[scores={generic.z=-$(rotMaxRange)..$(rotMaxRange)}] at @s run function src:generic/vfx/slash_encircle/slash with storage minecraft:vfx slashEncircle