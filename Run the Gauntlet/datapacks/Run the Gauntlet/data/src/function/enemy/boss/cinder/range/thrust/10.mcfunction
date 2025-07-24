## Thrust frame 10
execute rotated ~ 0 positioned ^-0.5 ^1 ^ run function labyrinth:mobs/bosses/cinder/range/thrust/vfx_blade
execute rotated ~ 0 positioned ^-0.5 ^1 ^ run function labyrinth:generic/functions/raycast_mode/ignore_blocks/start {"length":"10","hitEnd":"function none","hitEntity":"execute as @p at @s run function labyrinth:mobs/bosses/cinder/range/thrust/hit","vfx":"function none"}