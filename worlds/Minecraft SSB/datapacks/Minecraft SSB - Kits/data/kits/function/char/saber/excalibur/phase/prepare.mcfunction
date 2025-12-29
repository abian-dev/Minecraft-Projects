## Preparing to swing phase
playsound entity.breeze.wind_burst neutral @a[distance=..20] ~ ~ ~ 0.2 0.5 0.2

# golden beam
scoreboard players set @s kits.raycastTick 40
execute at @s anchored eyes run function kits:char/saber/excalibur/step
scoreboard players reset @s kits.raycastTick

# follow user
tag @s add SaberExcaliburSword.curr
execute as @a[tag=SaberExcaliburUse] at @s as @e[type=item_display,limit=1,sort=nearest,tag=SaberExcaliburSword.curr] rotated ~ 0 run tp @s ^ ^2.0 ^0.5 ~ -90
tag @s remove SaberExcaliburSword.curr