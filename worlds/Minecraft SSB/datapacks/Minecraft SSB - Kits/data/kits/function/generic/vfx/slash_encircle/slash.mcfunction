## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s kits.generic.x = %vfxSlashEncircle.px kits.generic.x
scoreboard players operation @s kits.generic.y = %vfxSlashEncircle.py kits.generic.y
scoreboard players operation @s kits.generic.x -= %vfxSlashEncircle.x kits.generic.x
scoreboard players operation @s kits.generic.y -= %vfxSlashEncircle.y kits.generic.y

# rotate toward point
$execute unless entity @s[scores={kits.generic.x=-$(yaw)..$(yaw)}] run scoreboard players operation %vfxSlashEncircle.x kits.generic.x += %vfxSlashEncircle.vx kits.generic.x
$execute unless entity @s[scores={kits.generic.y=-$(pitch)..$(pitch)}] run scoreboard players operation %vfxSlashEncircle.y kits.generic.y += %vfxSlashEncircle.vy kits.generic.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxSlashEncircle.x kits.generic.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxSlashEncircle.y kits.generic.y

# particles
$execute at @s run $(vfx)

# recurse until pos is close to point
scoreboard players reset @s kits.generic.z
scoreboard players operation @s kits.generic.z += @s kits.generic.x
scoreboard players operation @s kits.generic.z += @s kits.generic.y
$execute if entity @s[scores={kits.generic.z=-$(rotMaxRange)..$(rotMaxRange)}] run function kits:generic/vfx/slash_encircle/end
$execute unless entity @s[scores={kits.generic.z=-$(rotMaxRange)..$(rotMaxRange)}] at @s run function kits:generic/vfx/slash_encircle/slash with storage minecraft:kits.vfx slashEncircle