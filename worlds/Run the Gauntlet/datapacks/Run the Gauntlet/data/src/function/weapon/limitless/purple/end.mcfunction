## Ends purple
tag @s add limitless.purple.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.purple.curr,tag=limitless.purple] run tag @a[tag=limitless.purple.user] remove limitless.purple.user
kill @s