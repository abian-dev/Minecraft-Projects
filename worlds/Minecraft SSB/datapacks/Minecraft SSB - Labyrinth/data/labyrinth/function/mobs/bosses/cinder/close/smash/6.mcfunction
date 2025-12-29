## Smash frame 6
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.launchEnd] feet run tp @s ~ ~ ~ ~ ~
execute rotated ~ 340 positioned ~ ~1 ~ run function labyrinth:generic/functions/raycast_mode/ignore_all/start {"length":"6","hitEnd":"particle flame ~ ~ ~ 0.2 0.2 0.2 0 20 force","vfx":"function none"}
playsound entity.ghast.shoot neutral @a[distance=..50] ~ ~ ~ 1 0 1