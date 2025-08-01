## Ends heavy rain blade
tag @s add mirageedge.rain.curr
execute unless entity @e[type=armor_stand,tag=!mirageedge.rain.curr,tag=mirageedge.rain] run tag @a[tag=mirageedge.rain.user] remove mirageedge.rain.user
kill @s