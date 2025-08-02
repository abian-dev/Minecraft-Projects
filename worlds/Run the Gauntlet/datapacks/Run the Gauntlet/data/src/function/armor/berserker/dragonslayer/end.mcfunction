## Ends dragonslayer
# reset
tag @s add berserker.dragonslayer.curr
execute unless entity @e[type=item_display,tag=!berserker.dragonslayer.curr,tag=berserker.dragonslayer] run tag @a[tag=berserker.dragonslayer.user] remove berserker.dragonslayer.user
kill @s