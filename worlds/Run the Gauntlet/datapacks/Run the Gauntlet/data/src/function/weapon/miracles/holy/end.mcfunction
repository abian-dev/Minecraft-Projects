## Ends holy scriptures
scoreboard players operation %miracles.holy.search user.id = @s user.id
execute as @a[tag=miracles.holy.user] if score @s user.id = %miracles.holy.search user.id run attribute @s gravity modifier remove gravity.miracles.holy
execute as @a[tag=miracles.holy.user] if score @s user.id = %miracles.holy.search user.id run tag @s remove miracles.holy.user
scoreboard players reset %miracles.holy.search
kill @s