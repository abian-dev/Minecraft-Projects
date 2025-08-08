## Executed as merging at purple every tick
# particles
execute at @s run tp @s ~ ~ ~ ~20 ~
execute at @s if entity @s[tag=limitless.purple.blue] run function src:weapon/limitless/purple/vfx/blue
execute at @s if entity @s[tag=limitless.purple.red] run function src:weapon/limitless/purple/vfx/red

# get closer together
scoreboard players remove @s generic.raycast.dist 1
scoreboard players operation @s generic.raycast.step = @s generic.raycast.dist
execute if entity @s[tag=limitless.purple.blue] rotated ~-90 0 run function src:weapon/limitless/purple/vfx/step
execute if entity @s[tag=limitless.purple.red] rotated ~90 0 run function src:weapon/limitless/purple/vfx/step

# when merged
execute if score @s generic.raycast.dist matches ..1 run kill @s