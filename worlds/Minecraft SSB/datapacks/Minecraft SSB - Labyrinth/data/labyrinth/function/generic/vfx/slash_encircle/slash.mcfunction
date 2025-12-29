## Random Slash at Arbitrary Position on Sphere
# measure closeness to point
scoreboard players operation @s labyrinth.generic.x = %vfxSlashEncircle.px labyrinth.generic.x
scoreboard players operation @s labyrinth.generic.y = %vfxSlashEncircle.py labyrinth.generic.y
scoreboard players operation @s labyrinth.generic.x -= %vfxSlashEncircle.x labyrinth.generic.x
scoreboard players operation @s labyrinth.generic.y -= %vfxSlashEncircle.y labyrinth.generic.y

# rotate toward point
$execute unless entity @s[scores={labyrinth.generic.x=-$(yaw)..$(yaw)}] run scoreboard players operation %vfxSlashEncircle.x labyrinth.generic.x += %vfxSlashEncircle.vx labyrinth.generic.x
$execute unless entity @s[scores={labyrinth.generic.y=-$(pitch)..$(pitch)}] run scoreboard players operation %vfxSlashEncircle.y labyrinth.generic.y += %vfxSlashEncircle.vy labyrinth.generic.y
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get %vfxSlashEncircle.x labyrinth.generic.x
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get %vfxSlashEncircle.y labyrinth.generic.y

# particles
$execute at @s run $(vfx)

# recurse until pos is close to point
scoreboard players reset @s labyrinth.generic.z
scoreboard players operation @s labyrinth.generic.z += @s labyrinth.generic.x
scoreboard players operation @s labyrinth.generic.z += @s labyrinth.generic.y
$execute if entity @s[scores={labyrinth.generic.z=-$(rotMaxRange)..$(rotMaxRange)}] run function labyrinth:generic/vfx/slash_encircle/end
$execute unless entity @s[scores={labyrinth.generic.z=-$(rotMaxRange)..$(rotMaxRange)}] at @s run function labyrinth:generic/vfx/slash_encircle/slash with storage minecraft:labyrinth.vfx slashEncircle