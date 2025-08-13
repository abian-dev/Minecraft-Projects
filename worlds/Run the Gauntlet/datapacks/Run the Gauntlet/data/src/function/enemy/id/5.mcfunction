# id: 5
## Merges Elite Skeleton data to spawned entity
# attributes
attribute @s scale base set 1.1
attribute @s max_health base set 50
attribute @s movement_speed base set 0.40
data modify entity @s Health set value 50

# items
item replace entity @s armor.chest with iron_chestplate[unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with chainmail_boots[unbreakable={}]
item replace entity @s weapon.mainhand with bow[enchantments={power:2},unbreakable={}]

# data merge
data merge entity @s {DeathLootTable:"test"}