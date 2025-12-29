## Exploding phase
# explosion line
execute unless score @s kits.raycastTick2 matches 40.. run scoreboard players add @s kits.raycastTick2 5
scoreboard players operation @s kits.raycastTick = @s kits.raycastTick2
execute at @s anchored eyes run function kits:char/saber/excalibur/explode/step
scoreboard players reset @s kits.raycastTick

# follow user
tag @s add SaberExcaliburSword.curr
execute as @a[tag=SaberExcaliburUse] at @s as @e[type=item_display,limit=1,sort=nearest,tag=SaberExcaliburSword.curr] rotated ~ 0 run tp @s ^ ^1.0 ^0.5 ~ ~
tag @s remove SaberExcaliburSword.curr
