## Initialize summoned red
execute rotated as @p[tag=limitless.red.user] run tp @s ~ ~ ~ ~90 -90
scoreboard players set @s generic.raycast.dist 10

# copy user id
scoreboard players operation @s user.id = @p[tag=limitless.red.user] user.id

# launch time
scoreboard players set @s generic.math 20

# if user is using flash
execute if entity @p[tag=limitless.red.flash.user] run function src:weapon/limitless/red/flash/projectile/init