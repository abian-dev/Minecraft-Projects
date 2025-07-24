## Execute while the game is running
# at individual players
execute as @a[tag=system.arena.player] at @s run function src:system/games/gauntlet/ingame/player

# game status
execute store result score %arena.enemiesAlive system.global run execute if entity @e[type=!#src:non_entity,team=enemy]
execute store result score %arena.playersAlive system.global run execute if entity @a[gamemode=!spectator,tag=system.arena.player]
execute if score %arena.playersAlive system.global matches ..0 run function src:system/games/gauntlet/ingame/end
execute if score %arena.enemiesAlive system.global matches ..0 run function src:spawning/wave/next with storage spawning wave

# low frequency checks
schedule clear src:system/games/gauntlet/ingame/main