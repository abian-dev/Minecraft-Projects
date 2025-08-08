## Execute while the game is running
# at individual players
execute as @a[tag=system.gauntlet.player] at @s run function src:system/games/gauntlet/ingame/player

# game status
execute store result score %gauntlet.enemiesAlive system.global run execute if entity @e[type=!#src:non_entity,team=enemy]
execute store result score %gauntlet.playersAlive system.global run execute if entity @a[gamemode=!spectator,tag=system.gauntlet.player]
execute if score %gauntlet.playersAlive system.global matches ..0 run function src:system/games/gauntlet/ingame/end
execute if score %gauntlet.enemiesAlive system.global matches ..0 unless score %gauntlet.playersAlive system.global matches ..0 run function src:spawning/wave/next with storage spawning wave

# low frequency checks
schedule clear src:system/games/gauntlet/ingame/main