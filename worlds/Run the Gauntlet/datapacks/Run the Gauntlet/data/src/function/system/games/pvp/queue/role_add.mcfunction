## Adds player number
execute store result score %pvp.user.id user.id run execute if entity @a[tag=system.gauntlet.player]
$scoreboard players set @s user.id $(index)
scoreboard players operation @s user.id += %pvp.user.id user.id
scoreboard players reset %pvp.user.id

tag @s add system.pvp.player
$tag @s add system.pvp.player$(index)
tag @s remove system.pvp.unassigned