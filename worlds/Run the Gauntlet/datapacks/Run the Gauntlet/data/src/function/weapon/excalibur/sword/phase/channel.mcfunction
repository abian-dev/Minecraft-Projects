## Channeling phase
# follow user
tag @s add excalibur.sword.curr
scoreboard players operation %excalibur.sword.search user.id = @s user.id
execute as @a[tag=excalibur.sword.user] at @s if score @s user.id = %excalibur.sword.search user.id as @e[type=item_display,limit=1,sort=nearest,tag=excalibur.sword.curr] rotated ~ 0 run tp @s ^-0.12 ^1.00 ^0.50 ~90 -90
tag @s remove excalibur.sword.curr
scoreboard players reset %excalibur.sword.search