# id: 6
## Merges Phantom data to spawned entity
# attributes
attribute @s attack_damage base set 15
attribute @s scale base set 3.0
attribute @s max_health base set 80
data modify entity @s Health set value 80

# data merge
data merge entity @s {DeathLootTable:"test"}