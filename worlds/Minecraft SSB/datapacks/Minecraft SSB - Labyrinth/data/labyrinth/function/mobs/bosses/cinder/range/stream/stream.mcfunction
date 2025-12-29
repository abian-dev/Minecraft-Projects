## In all stream frames
execute rotated ~ 0 positioned ^-0.5 ^1 ^1 run function labyrinth:generic/functions/raycast_mode/ignore_entities/start {"length":"100","hitEnd":"function none","hitBlock":"function none","vfx":"function labyrinth:mobs/bosses/cinder/range/stream/particle"}
function labyrinth:generic/functions/homing {"snappingSpeed":"1","target":"@p","speed":"0"}
playsound minecraft:entity.illusioner.cast_spell neutral @a[distance=..50] ~ ~ ~ 0.75 2 0.75