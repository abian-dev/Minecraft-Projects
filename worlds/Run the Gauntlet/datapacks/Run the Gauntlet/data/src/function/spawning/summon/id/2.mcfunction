# id: 2
## Merges Hell Knight data to spawned entity
# attributes
attribute @s scale base set 1.5
attribute @s max_health base set 100
attribute @s movement_speed base set 0.5
data modify entity @s Health set value 100

# items
item replace entity @s armor.head with player_head[profile={id:[I;-354672025,888685242,-1318016794,-1095757719],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjU3MDBhNDk1Yjk1Y2JmNjQzZTFjNmE4ZTk2OGNmNjA0MTNiZTI4MDU1MTRiNjAyYWI0Y2E5NTg3YTVjYTk3MCJ9fX0="}]}] 
item replace entity @s armor.chest with leather_chestplate[trim={pattern:silence,material:quartz},dyed_color=13807023,unbreakable={}]
item replace entity @s armor.legs with leather_leggings[trim={pattern:silence,material:quartz},dyed_color=13807023,unbreakable={}]
item replace entity @s armor.feet with leather_boots[trim={pattern:silence,material:quartz},dyed_color=13807023,unbreakable={}]
item replace entity @s weapon.mainhand with iron_hoe[unbreakable={}]
item replace entity @s weapon.offhand with iron_hoe[unbreakable={}]

# data merge
data merge entity @s {Silent:1b}
#data merge entity @s {DeathLootTable:"tools:entities/zombie"}