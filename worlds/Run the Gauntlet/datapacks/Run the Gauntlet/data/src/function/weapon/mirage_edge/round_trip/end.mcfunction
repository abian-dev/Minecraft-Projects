## Ends round trip
tag @s add mirageedge.roundtrip.curr
execute unless entity @e[type=armor_stand,tag=!mirageedge.roundtrip.curr,tag=mirageedge.roundtrip] run tag @a[tag=mirageedge.roundtrip.user] remove mirageedge.roundtrip.user
kill @s