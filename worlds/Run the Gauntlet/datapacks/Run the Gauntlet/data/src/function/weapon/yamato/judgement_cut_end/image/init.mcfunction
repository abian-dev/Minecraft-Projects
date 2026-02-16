## Initialize summoned afterimage
tp @s ~ ~ ~ ~ ~

# copy user
scoreboard players operation @s user.id = @p[tag=yamato.jce.user] user.id
data modify entity @s profile.id set from entity @p[tag=yamato.jce.user] UUID

item replace entity @s weapon.mainhand from entity @p[tag=yamato.jce.user] weapon.mainhand
item replace entity @s weapon.offhand from entity @p[tag=yamato.jce.user] weapon.offhand

item replace entity @s armor.head from entity @p[tag=yamato.jce.user] armor.head
item replace entity @s armor.chest from entity @p[tag=yamato.jce.user] armor.chest
item replace entity @s armor.legs from entity @p[tag=yamato.jce.user] armor.legs
item replace entity @s armor.feet from entity @p[tag=yamato.jce.user] armor.feet