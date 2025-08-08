## Ends thrown swords
tag @s add miracles.swords.throw.curr
execute unless entity @e[type=area_effect_cloud,tag=!miracles.swords.throw.curr,tag=miracles.swords.throw] run tag @a[tag=miracles.swords.throw.user] remove miracles.swords.throw.user
kill @s