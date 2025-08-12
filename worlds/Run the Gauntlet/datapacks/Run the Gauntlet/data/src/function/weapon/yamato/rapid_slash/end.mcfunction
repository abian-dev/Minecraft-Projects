## Ends rapid slash
scoreboard players operation %yamato.rapid.search user.id = @s user.id
execute as @a[tag=yamato.rapid.user] if score @s user.id = %yamato.rapid.search user.id run attribute @s gravity modifier remove gravity.yamato.rapidslash
execute as @a[tag=yamato.rapid.user] if score @s user.id = %yamato.rapid.search user.id run tag @s remove yamato.rapid.user
scoreboard players reset %yamato.rapid.search
kill @s