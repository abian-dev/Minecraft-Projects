## Ends excalibur sword
# reset
tag @s add excalibur.sword.curr
execute unless entity @e[type=item_display,tag=!excalibur.sword.curr,tag=excalibur.sword] run tag @a[tag=excalibur.sword.user] remove excalibur.sword.user
kill @s