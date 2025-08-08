## Ends soul steal
tag @s add miracles.soul.curr
execute unless entity @e[type=area_effect_cloud,tag=!miracles.soul.curr,tag=miracles.soul] as @e[type=!#src:non_entity] run attribute @s gravity modifier remove gravity.miracles.soul
execute unless entity @e[type=area_effect_cloud,tag=!miracles.soul.curr,tag=miracles.soul] run tag @a[tag=miracles.soul.user] remove miracles.soul.user
kill @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.soul.origin]
kill @s