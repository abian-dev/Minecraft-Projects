## Resets all local gauntlet data
gamemode adventure @s[gamemode=!adventure]
clear @s
effect clear @s
team leave @s
tp @s 0 70 1000 facing 0 70 1001
function src:system/ui/give

# local scores
scoreboard players reset @s criterion.death
scoreboard players reset @s system.deathTimer
scoreboard players reset @s user.id

# game tags
tag @s remove system.gauntlet.inside
tag @s remove system.gauntlet.player
tag @s remove system.gauntlet.player1
tag @s remove system.gauntlet.player2
tag @s remove system.gauntlet.player3
tag @s remove system.gauntlet.player4
tag @s remove system.gauntlet.player5
tag @s remove system.gauntlet.player6
tag @s remove system.gauntlet.player7
tag @s remove system.gauntlet.player8
tag @s remove system.gauntlet.player9
tag @s remove system.gauntlet.player10
tag @s remove system.gauntlet.unassigned
tag @s remove system.gauntlet.spectator
function src:system/util/reset_tags

# attributes
attribute @s gravity modifier remove gravity.gauntlet.spectator
function src:system/util/reset_attributes