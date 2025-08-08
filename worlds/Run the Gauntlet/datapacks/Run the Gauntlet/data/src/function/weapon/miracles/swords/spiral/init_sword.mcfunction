## Initialize summoned sword
execute facing entity @p[tag=miracles.swords.spiral.user] feet rotated ~180 0 run tp @s ~ ~ ~ ~ ~

# get id
execute positioned as @p[tag=miracles.swords.spiral.user] run execute store result score @s generic.constant run execute if entity @e[type=area_effect_cloud,distance=..5,tag=miracles.swords.spiral]
scoreboard players operation @s user.id = @p[tag=miracles.swords.spiral.user] user.id