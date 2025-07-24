## Slash right frame 6
tp @s ~ ~ ~ facing entity @p
execute rotated ~320 5 positioned ~ ~1 ~ run function labyrinth:generic/functions/raycast_mode/ignore_all/start {"length":"7","hitEnd":"particle flame ~ ~ ~ 0.2 0.2 0.2 0 20","vfx":"function none"}
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1