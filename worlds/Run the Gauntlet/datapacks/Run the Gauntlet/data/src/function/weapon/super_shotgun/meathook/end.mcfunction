## Ends meathook
scoreboard players operation %supershotgun.meathook.search user.id = @s user.id
execute as @a[tag=supershotgun.meathook.user] if score @s user.id = %supershotgun.meathook.search user.id run attribute @s gravity modifier remove gravity.supershotgun.meathook
execute as @a[tag=supershotgun.meathook.user] if score @s user.id = %supershotgun.meathook.search user.id run tag @s remove supershotgun.meathook.user
scoreboard players reset %supershotgun.meathook.search
kill @s