## Plays rapid slash vfx
# orientation
execute positioned as @p[tag=yamato.rapid.user] run tp @s ~ ~ ~
execute at @s run tp @s ~ ~ ~ ~90 0
execute store result entity @s Rotation[1] float 1 run random value -20..20

# particles
particle smoke ~ ~0.25 ~ 0.25 0.25 0.25 0.05 2 force
execute positioned ^-0.09375 ^1 ^ run function src:weapon/yamato/rapid_slash/vfx/slash