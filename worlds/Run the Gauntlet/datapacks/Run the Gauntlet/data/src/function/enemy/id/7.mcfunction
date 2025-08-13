# id: 7
## Merges Wither Skeleton data to spawned entity
# attributes
attribute @s scale base set 1.1
attribute @s max_health base set 50
attribute @s movement_speed base set 0.40
data modify entity @s Health set value 50

# items
item replace entity @s armor.chest with netherite_chestplate[unbreakable={}]
item replace entity @s armor.legs with netherite_leggings[unbreakable={}]
item replace entity @s armor.feet with netherite_boots[unbreakable={}]
item replace entity @s weapon.mainhand with netherite_sword[attribute_modifiers=[{type:attack_damage,amount:10,slot:mainhand,operation:add_value,id:"atkdmg.mainhand.enemy.zombie"}],unbreakable={}]

# data merge
data merge entity @s {DeathLootTable:"test"}