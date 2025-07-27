# id: 1
## Merges Zombie data to spawned entity
# attributes
attribute @s scale base set 1
attribute @s max_health base set 50
attribute @s movement_speed base set 0.30
data modify entity @s Health set value 50

# data merge
data merge entity @s {IsBaby:0b}
data merge entity @s {DeathLootTable:"test"}