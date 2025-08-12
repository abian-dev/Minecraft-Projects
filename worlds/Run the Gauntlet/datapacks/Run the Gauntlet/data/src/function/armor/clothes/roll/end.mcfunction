## Ends roll
scoreboard players operation %clothes.roll.search user.id = @s user.id
execute as @a[tag=clothes.roll.user] if score @s user.id = %clothes.roll.search user.id run attribute @s gravity modifier remove gravity.clothes.roll
execute as @a[tag=clothes.roll.user] if score @s user.id = %clothes.roll.search user.id run tag @s remove clothes.roll.user
scoreboard players reset %clothes.roll.search
kill @s