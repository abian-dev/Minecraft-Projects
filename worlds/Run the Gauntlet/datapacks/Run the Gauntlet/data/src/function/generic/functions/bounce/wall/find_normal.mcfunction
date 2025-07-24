## When the Raycast Detects an Approaching Wall
# reset
scoreboard players reset @s generic.z
scoreboard players reset @s generic.dz

# determines bounce using the wall's normal
execute unless block ~0.5 ~ ~ #src:passable run scoreboard players set @s generic.z 1
execute unless block ~-0.5 ~ ~ #src:passable run scoreboard players set @s generic.z 1
execute unless block ~ ~0.5 ~ #src:passable run scoreboard players set @s generic.dz 1
execute unless block ~ ~-0.5 ~ #src:passable run scoreboard players set @s generic.dz 1
execute unless block ~ ~ ~0.5 #src:passable run scoreboard players set @s generic.z 2
execute unless block ~ ~ ~-0.5 #src:passable run scoreboard players set @s generic.z 2