## At the end of grab
# throw
execute as @p[tag=limitless.grab.user] at @s run function src:weapon/limitless/grab/throw/use

# reset
attribute @p[tag=limitless.grab.user] gravity modifier remove gravity.limitless.grab
tag @p[tag=limitless.grab.user] remove limitless.grab.user
kill @s