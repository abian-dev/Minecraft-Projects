## Adds player number
$scoreboard players set @s user.id $(index)
tag @s add system.gauntlet.player
$tag @s add system.gauntlet.player$(index)
tag @s remove system.gauntlet.unassigned