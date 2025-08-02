## Executed at user every tick
# thrust toward marker
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=mirageedge.stinger.curr] feet run function src:weapon/mirage_edge/stinger/dash
execute rotated ~ 0 positioned ^ ^1 ^3 as @e[type=!#src:non_entity,distance=..3,tag=!mirageedge.stinger.user,team=!ally] at @s run function src:weapon/mirage_edge/stinger/hit

# vfx
execute rotated ~ 0 positioned ^-0.5 ^1.0 ^5.0 run function src:weapon/mirage_edge/stinger/vfx_sting