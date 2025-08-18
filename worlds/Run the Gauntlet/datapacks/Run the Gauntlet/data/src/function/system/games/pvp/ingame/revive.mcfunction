## When player respawns
# revive
effect give @s absorption infinite 4 true
scoreboard players reset @s system.deathTimer
gamemode adventure @s

# teleport to respective location
spreadplayers 0 -1000 10 45 under 70 false @s[tag=system.pvp.player]
tp @s[tag=system.pvp.player1] 0 70 -962 facing 0 70 -963
tp @s[tag=system.pvp.player2] 0 70 -1038 facing 0 70 -1037
tp @s[tag=system.pvp.player3] 38 70 -1000 facing 37 70 -1000
tp @s[tag=system.pvp.player4] -38 70 -1000 facing -37 70 -1000

# game state
scoreboard players remove @s system.lives 1
execute if score @s system.lives matches 0 run function src:system/games/pvp/ingame/results/lose