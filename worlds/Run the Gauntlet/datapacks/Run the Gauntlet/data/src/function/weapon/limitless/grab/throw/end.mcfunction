## Ends throw
tag @s add limitless.grab.throw.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.grab.throw.curr,tag=limitless.grab.throw] run tag @e[type=!#src:non_entity,tag=limitless.grab.thrown] remove limitless.grab.thrown
kill @s