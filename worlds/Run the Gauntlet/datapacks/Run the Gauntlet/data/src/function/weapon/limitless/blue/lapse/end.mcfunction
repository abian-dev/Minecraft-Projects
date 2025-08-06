## Ends blue
tag @s add limitless.blue.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.blue.curr,tag=limitless.blue] run tag @a[tag=limitless.blue.user] remove limitless.blue.user
kill @s