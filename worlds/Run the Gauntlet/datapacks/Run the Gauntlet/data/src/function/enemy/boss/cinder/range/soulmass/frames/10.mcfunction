## Soulmass frame 10
kill @e[type=area_effect_cloud,distance=..20,tag=labyrinth.cinder.soul]
execute positioned ~ ~2 ~ positioned ^2.0 ^0.0 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^1.73 ^1.0 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^1.0 ^1.73 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^0.0 ^2.0 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^-1.0 ^1.73 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^-1.73 ^1.0 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
execute positioned ~ ~2 ~ positioned ^-2.0 ^0.0 ^0 run function labyrinth:mobs/bosses/cinder/range/soulmass/summon
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5