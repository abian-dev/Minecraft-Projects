## Dash forward toward marker
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.dashEnd] feet positioned ^ ^ ^1 run tp @s ~ ~ ~
kill @e[type=area_effect_cloud,limit=1,sort=nearest,distance=..2,tag=labyrinth.cinder.dashEnd]