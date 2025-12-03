## Ends dash
scoreboard players operation %yamato.jce.search user.id = @s user.id
execute as @a[tag=yamato.jce.user] if score @s user.id = %yamato.jce.search user.id run attribute @s gravity modifier remove gravity.yamato.jce
execute as @e[type=area_effect_cloud,tag=yamato.jce.initPos] if score @s user.id = %yamato.jce.search user.id at @s as @a[tag=yamato.jce.user] if score @s user.id = %yamato.jce.search user.id run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=yamato.jce.initPos] if score @s user.id = %yamato.jce.search user.id run kill @s
scoreboard players reset %yamato.jce.search
kill @s