## Runs blistering blade stationary behavior
# homing
execute facing entity @e[type=!#src:non_entity,distance=..20,limit=1,sort=nearest,tag=!mirageedge.blistering.user,team=!ally] feet rotated ~ ~-5 run tp @s ~ ~ ~ ~ ~

# follow user
scoreboard players operation %mirageedge.blistering.search user.id = @s user.id
execute as @a[tag=mirageedge.blistering.user] at @s if score @s user.id = %mirageedge.blistering.search user.id as @e[type=area_effect_cloud,tag=mirageedge.blistering,scores={generic.math=1..}] run function src:weapon/mirage_edge/blistering/attach
scoreboard players reset %mirageedge.blistering.search