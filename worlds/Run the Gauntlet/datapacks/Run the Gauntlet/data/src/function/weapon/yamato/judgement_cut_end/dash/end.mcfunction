## Ends dash
scoreboard players operation %yamato.jce.search user.id = @s user.id
execute as @a[tag=yamato.jce.user] if score @s user.id = %yamato.jce.search user.id run attribute @s gravity modifier remove gravity.yamato.jce
scoreboard players reset %yamato.jce.search
kill @s