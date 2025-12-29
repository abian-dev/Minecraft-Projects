## Swinging phase
tp @s ~ ~ ~ ~ ~15

# golden beam
scoreboard players set @s kits.raycastTick 40
execute at @s anchored eyes run function kits:char/saber/excalibur/step
scoreboard players reset @s kits.raycastTick

# follow user
tag @s add SaberExcaliburSword.curr
execute as @a[tag=SaberExcaliburUse] at @s as @e[type=item_display,limit=1,sort=nearest,tag=SaberExcaliburSword.curr] rotated ~ 0 run tp @s ^ ^1.0 ^0.5
tag @s remove SaberExcaliburSword.curr