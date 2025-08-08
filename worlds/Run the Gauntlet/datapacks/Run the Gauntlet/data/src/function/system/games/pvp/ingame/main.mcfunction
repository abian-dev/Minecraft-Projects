## Execute while the game is running
# at individual players
execute as @a[tag=system.pvp.player] at @s run function src:system/games/pvp/ingame/player

# game status
execute store result score %pvp.playersAlive system.global run execute if entity @a[tag=system.pvp.player]
execute if score %pvp.playersAlive system.global matches ..1 run function src:system/games/pvp/ingame/end

# low frequency checks
# schedule clear src:system/games/pvp/ingame/main