## Spin frame 2
tp @s ~ ~ ~ facing entity @p
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:mobs/bosses/cinder/close/spin/vfx_blade
execute rotated as @s rotated ~ 0 run function labyrinth:generic/functions/raycast_mode/ignore_entities/start {"length":"30","hitEnd":"function labyrinth:mobs/bosses/cinder/close/spin/dash_marker","hitBlock":"function labyrinth:mobs/bosses/cinder/close/spin/dash_marker","vfx":"function none"}