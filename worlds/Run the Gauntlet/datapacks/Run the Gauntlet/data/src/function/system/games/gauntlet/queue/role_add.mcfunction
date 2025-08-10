## Adds player number
execute store result score %gauntlet.user.id user.id run execute if entity @a[tag=system.pvp.player]
$scoreboard players set @s user.id $(index)
scoreboard players operation @s user.id += %gauntlet.user.id user.id
scoreboard players reset %gauntlet.user.id

tag @s add system.gauntlet.player
$tag @s add system.gauntlet.player$(index)
tag @s remove system.gauntlet.unassigned