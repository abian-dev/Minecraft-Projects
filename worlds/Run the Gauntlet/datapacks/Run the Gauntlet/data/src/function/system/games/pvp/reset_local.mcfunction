## Resets all local pvp
gamemode adventure @s[gamemode=!adventure]
clear @s
effect clear @s
tp @s 0 70 1000 facing 0 70 1001
function src:system/ui/give

# local scores
scoreboard players reset @s criterion.death
scoreboard players reset @s system.deathTimer
scoreboard players reset @s system.lives
scoreboard players reset @s user.id

# game tags
tag @s remove system.pvp.inside
tag @s remove system.pvp.player
tag @s remove system.pvp.player1
tag @s remove system.pvp.player2
tag @s remove system.pvp.player3
tag @s remove system.pvp.player4
tag @s remove system.pvp.player5
tag @s remove system.pvp.player6
tag @s remove system.pvp.player7
tag @s remove system.pvp.player8
tag @s remove system.pvp.player9
tag @s remove system.pvp.player10
tag @s remove system.pvp.unassigned
function src:system/util/reset_tags

# attributes
function src:system/util/reset_attributes