## At the end of grab
# throw
execute as @p[tag=limitless.grab.user] at @s run function src:weapon/limitless/grab/throw/use

# reset
scoreboard players operation %limitless.grab.search user.id = @s user.id
execute as @a[tag=limitless.grab.user] if score @s user.id = %limitless.grab.search user.id run attribute @s gravity modifier remove gravity.limitless.grab
execute as @a[tag=limitless.grab.user] if score @s user.id = %limitless.grab.search user.id run tag @s remove limitless.grab.user
scoreboard players reset %limitless.grab.search
kill @s