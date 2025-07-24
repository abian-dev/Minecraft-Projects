## Smash frame 1
tp @s ~ ~ ~ facing entity @p
execute rotated ~ 270 positioned ~ ~1 ~ run function labyrinth:generic/functions/raycast_mode/ignore_all/start {"length":"7","hitEnd":"particle flame ~ ~ ~ 0.2 0.2 0.2 0 20","vfx":"function none"}
execute rotated as @s run function labyrinth:generic/functions/raycast/start {"length":"20","hitEnd":"function labyrinth:mobs/bosses/cinder/close/smash/end_marker","hitBlock":"function labyrinth:mobs/bosses/cinder/close/smash/end_marker","hitEntity":"function labyrinth:mobs/bosses/cinder/close/smash/end_marker","vfx":"function none"}
data merge entity @s {NoAI:0b}
function labyrinth:mobs/bosses/cinder/close/smash/launch