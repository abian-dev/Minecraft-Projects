## Resets all local gauntlet data
# spawn
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
tag @s remove system.arena.inside
tag @s remove system.arena.player
tag @s remove system.arena.player1
tag @s remove system.arena.player2
tag @s remove system.arena.player3
tag @s remove system.arena.player4
tag @s remove system.arena.player5
tag @s remove system.arena.player6
tag @s remove system.arena.player7
tag @s remove system.arena.player8
tag @s remove system.arena.player9
tag @s remove system.arena.player10
tag @s remove system.arena.unassigned
tag @s remove system.arena.spectator
function src:system/util/reset_tags

# attributes
attribute @s gravity modifier remove gravity.gauntlet.spectator
function src:system/util/reset_attributes