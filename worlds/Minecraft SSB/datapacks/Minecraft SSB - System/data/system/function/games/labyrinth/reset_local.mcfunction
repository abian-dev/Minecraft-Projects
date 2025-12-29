## Resets all local labyrinth
# reset kit
function kits:main/reset
tag @s remove InLabyrinth
execute unless entity @a[tag=InLabyrinth] run function system:games/labyrinth/kill_entities

# spawn
clear @s
tp @s 0 1 0 facing 0 1.05 -1
gamemode adventure @s

# local scores
scoreboard players reset @s system.kit.id
scoreboard players reset @s system.criterion.death
scoreboard players reset @s system.criterion.leave

# give ui
function system:utilities/ui/give