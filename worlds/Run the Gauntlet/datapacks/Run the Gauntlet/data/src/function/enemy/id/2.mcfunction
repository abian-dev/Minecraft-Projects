# id: 2
## Merges Skeleton data to spawned entity
# attributes
attribute @s scale base set 1
attribute @s max_health base set 40
attribute @s movement_speed base set 0.40
data modify entity @s Health set value 40

# data merge
data merge entity @s {DeathLootTable:"test"}