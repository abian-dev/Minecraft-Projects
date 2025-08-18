## Swinging phase
tp @s ~ ~ ~ ~ ~15

# golden beam
scoreboard players set @s generic.raycast.step 40
execute at @s anchored eyes run function src:weapon/excalibur/sword/step
scoreboard players reset @s generic.raycast.step

# follow user
tag @s add excalibur.sword.curr
scoreboard players operation %excalibur.sword.search user.id = @s user.id
execute as @a[tag=excalibur.sword.user] at @s if score @s user.id = %excalibur.sword.search user.id as @e[type=item_display,limit=1,sort=nearest,tag=excalibur.sword.curr] rotated ~ 0 run tp @s ^ ^1.0 ^0.5
tag @s remove excalibur.sword.curr
scoreboard players reset %excalibur.sword.search