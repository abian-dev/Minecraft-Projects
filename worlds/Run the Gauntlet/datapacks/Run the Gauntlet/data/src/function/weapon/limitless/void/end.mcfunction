## Ends unlimited void
tag @s add limitless.void.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.void.curr,tag=limitless.void] run tag @a[tag=limitless.void.user] remove limitless.void.user
execute unless entity @e[type=area_effect_cloud,tag=!limitless.void.curr,tag=limitless.void] run tag @e[type=!#src:non_entity,tag=limitless.void.trapped] remove limitless.void.trapped
kill @s