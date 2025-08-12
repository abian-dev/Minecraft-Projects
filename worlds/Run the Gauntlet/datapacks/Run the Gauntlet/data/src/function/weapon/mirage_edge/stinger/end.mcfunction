## Ends stinger
scoreboard players operation %mirageedge.stinger.search user.id = @s user.id
execute as @a[tag=mirageedge.stinger.user] if score @s user.id = %mirageedge.stinger.search user.id run attribute @s gravity modifier remove gravity.mirageedge.stinger
execute as @a[tag=mirageedge.stinger.user] if score @s user.id = %mirageedge.stinger.search user.id run tag @s remove mirageedge.stinger.user
scoreboard players reset %mirageedge.stinger.search
kill @s