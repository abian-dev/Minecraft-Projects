## When blistering blade collides
execute as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!mirageedge.blistering.user,team=!ally] at @s run damage @s 3 src:bypass_player_attack_no_kb by @p[tag=mirageedge.blistering.user]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 2 force

# reset
tag @s add mirageedge.blistering.curr
execute unless entity @e[type=area_effect_cloud,tag=!mirageedge.blistering.curr,tag=mirageedge.blistering] run tag @a[tag=mirageedge.blistering.user] remove mirageedge.blistering.user
kill @s