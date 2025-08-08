## Initialize summoned sword
execute facing entity @p[tag=miracles.swords.throw.user] feet rotated ~180 0 run tp @s ~ ~1 ~ ~ ~
data modify entity @s Rotation[1] set from entity @p[tag=miracles.swords.throw.user] Rotation[1]

# bounce
scoreboard players set @s generic.raycast.dist 0
scoreboard players set @s generic.raycast.step 1000
execute at @s run function src:generic/functions/bounce/wall/find