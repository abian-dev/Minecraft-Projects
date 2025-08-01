## When targeting raycast collides
scoreboard players set @s generic.raycast.step 0
execute unless entity @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!mirageedge.rain.user,team=!ally] run return run function src:weapon/mirage_edge/rain/summon/start
execute positioned as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!mirageedge.rain.user,team=!ally] run return run function src:weapon/mirage_edge/rain/summon/start