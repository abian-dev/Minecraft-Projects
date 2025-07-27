# id: 9
## Merges Deadite data to spawned entity
# attributes
attribute @s scale base set 1
attribute @s max_health base set 100
attribute @s movement_speed base set 0.35
data modify entity @s Health set value 100

# items
item replace entity @s armor.head with player_head[profile={id:[I;-1238998084,-1493415388,-1120806415,-1727696130],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWZkZTk4MGE5YjMyOTQyYjk1NzM3MWM2Yzc3ZDhkMDU3NTllNzgwNDcyZDYyNjliNTE2MjNjODFmMDdlZTU4NCJ9fX0="}]}]
item replace entity @s armor.chest with leather_chestplate[trim={pattern:raiser,material:quartz},dyed_color=11114392]
item replace entity @s armor.legs with leather_leggings[trim={pattern:silence,material:quartz},dyed_color=11114392,unbreakable={}]
item replace entity @s armor.feet with leather_boots[trim={pattern:silence,material:quartz},dyed_color=11114392,unbreakable={}]
item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[{type:attack_damage,amount:5,slot:mainhand,operation:add_value,id:"atkdmg.mainhand.enemy.deadite"}],unbreakable={}]
item replace entity @s weapon.offhand with shield[unbreakable={}]

# data merge
data merge entity @s {DeathLootTable:"test"}