function kits:main/reset
execute if entity @a[tag=Hinako] run tellraw @s {"text":"This kit is taken","bold":true,"color":"red"}
execute unless entity @a[tag=Hinako] run function kits:char/hinako/kit