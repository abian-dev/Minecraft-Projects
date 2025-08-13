# id: 4
## Merges Elite Zombie data to spawned entity
# attributes
attribute @s scale base set 1.1
attribute @s max_health base set 60
attribute @s movement_speed base set 0.35
data modify entity @s Health set value 60

# items
item replace entity @s armor.chest with iron_chestplate[unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with chainmail_boots[unbreakable={}]
item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[{type:attack_damage,amount:8,slot:mainhand,operation:add_value,id:"atkdmg.mainhand.enemy.zombie"}],unbreakable={}]

# data merge
data merge entity @s {IsBaby:0b}
data merge entity @s {DeathLootTable:"test"}