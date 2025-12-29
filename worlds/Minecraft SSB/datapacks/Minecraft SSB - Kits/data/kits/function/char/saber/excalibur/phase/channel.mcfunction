## Channeling phase
# follow user
tag @s add SaberExcaliburSword.curr
execute as @a[tag=SaberExcaliburUse] at @s as @e[type=item_display,limit=1,sort=nearest,tag=SaberExcaliburSword.curr] rotated ~ 0 run tp @s ^-0.12 ^1.00 ^0.50 ~90 -90
tag @s remove SaberExcaliburSword.curr
