## Initialize summoned dragonslayer
# data merge entity @s {transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0.7071f,0f,0.7071f],translation:[0f,0f,1f],scale:[1.5f,1.5f,1.5f]}}
execute rotated as @p[tag=berserker.dragonslayer.user] rotated ~-90 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players operation @s user.id = @p[tag=berserker.dragonslayer.user] user.id