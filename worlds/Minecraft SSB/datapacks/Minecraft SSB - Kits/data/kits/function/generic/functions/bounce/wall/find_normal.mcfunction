## When the Raycast Detects an Approaching Wall
# reset
scoreboard players reset @s kits.generic.z
scoreboard players reset @s kits.generic.dz

# determines bounce using the wall's normal
execute unless block ~0.5 ~ ~ #kits:passable run scoreboard players set @s kits.generic.z 1
execute unless block ~-0.5 ~ ~ #kits:passable run scoreboard players set @s kits.generic.z 1
execute unless block ~ ~0.5 ~ #kits:passable run scoreboard players set @s kits.generic.dz 1
execute unless block ~ ~-0.5 ~ #kits:passable run scoreboard players set @s kits.generic.dz 1
execute unless block ~ ~ ~0.5 #kits:passable run scoreboard players set @s kits.generic.z 2
execute unless block ~ ~ ~-0.5 #kits:passable run scoreboard players set @s kits.generic.z 2