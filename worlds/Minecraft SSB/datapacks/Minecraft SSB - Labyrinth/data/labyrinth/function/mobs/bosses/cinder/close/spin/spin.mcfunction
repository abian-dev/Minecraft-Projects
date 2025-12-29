## In all spinning frames
tp @s ~ ~ ~ ~35 ~
execute rotated ~ 0 positioned ~ ~1 ~ run function labyrinth:mobs/bosses/cinder/close/spin/vfx_blade
execute rotated ~ 0 positioned ^ ^1 ^3 as @a[tag=!Invincible,distance=..3.5] run function labyrinth:mobs/bosses/cinder/close/spin/hit
execute if entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=labyrinth.cinder.dashEnd] run function labyrinth:mobs/bosses/cinder/close/spin/dash