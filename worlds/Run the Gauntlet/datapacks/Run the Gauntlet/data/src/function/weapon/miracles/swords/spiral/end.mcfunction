## Ends spiral swords
tag @s add miracles.swords.spiral.curr
execute unless entity @e[type=area_effect_cloud,tag=!miracles.swords.spiral.curr,tag=miracles.swords.spiral.origin] run tag @a[tag=miracles.swords.spiral.user] remove miracles.swords.spiral.user
kill @e[type=area_effect_cloud,limit=3,sort=nearest,tag=miracles.swords.spiral]
kill @s