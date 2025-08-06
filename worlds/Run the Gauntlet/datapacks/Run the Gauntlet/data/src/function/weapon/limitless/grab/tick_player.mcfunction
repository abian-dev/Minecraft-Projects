## Executed at user every tick
# dash toward marker
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.grab.curr] feet run function src:weapon/limitless/grab/dash
execute rotated ~ 0 positioned ^ ^1 ^3 as @e[type=!#src:non_entity,distance=..3,tag=!limitless.grab.user,team=!ally] at @s run function src:weapon/limitless/grab/hit