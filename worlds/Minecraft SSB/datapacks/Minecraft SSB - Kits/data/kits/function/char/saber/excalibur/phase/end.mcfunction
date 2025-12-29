## Ends excalibur sword
# reset
tag @s add SaberExcaliburSword.curr
execute unless entity @e[type=item_display,tag=!SaberExcaliburSword.curr,tag=SaberExcaliburSword] run tag @a[tag=SaberExcaliburUse] remove SaberExcaliburUse
kill @s