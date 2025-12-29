## Leaping slash frame 1
tp @s ~ ~ ~ facing entity @p
execute rotated ~10 270 positioned ^2.0 ^1 ^ run function labyrinth:mobs/bosses/cinder/range/leaping_slash/vfx_blade
execute rotated as @s run function labyrinth:generic/functions/raycast/start {"length":"100","hitEnd":"function labyrinth:mobs/bosses/cinder/range/leaping_slash/end_marker","hitBlock":"function labyrinth:mobs/bosses/cinder/range/leaping_slash/end_marker","hitEntity":"function labyrinth:mobs/bosses/cinder/range/leaping_slash/end_marker","vfx":"function none"}
data merge entity @s {NoAI:0b}
function labyrinth:mobs/bosses/cinder/range/leaping_slash/launch