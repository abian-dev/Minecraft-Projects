## Adds player number
$scoreboard players set @s user.id $(index)
tag @s add system.arena.player
$tag @s add system.arena.player$(index)
tag @s remove system.arena.unassigned