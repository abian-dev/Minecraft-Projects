## Ends chainsaw rip
# reset
tag @s add chainsaw.rip.curr
execute unless entity @e[type=item_display,tag=!chainsaw.rip.curr,tag=chainsaw.rip] run tag @a[tag=chainsaw.rip.user] remove chainsaw.rip.user
kill @s