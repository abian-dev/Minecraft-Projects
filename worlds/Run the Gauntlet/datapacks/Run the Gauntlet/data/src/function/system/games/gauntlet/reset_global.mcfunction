## Resets all global gauntlet data
# kill all entities
kill @e[type=!player,predicate=src:location/gauntlet]
kill @e[type=!player,predicate=src:location/gauntlet]

# global scores
scoreboard objectives setdisplay sidebar
scoreboard players reset %gauntlet.players
scoreboard players reset %gauntlet.playersAlive
scoreboard players reset %gauntlet.enemiesAlive
scoreboard players reset %gauntlet.gameEndTimer
scoreboard players reset %gauntlet.gameStarted
scoreboard players reset %gauntlet.queueCountdown
scoreboard players reset %gauntlet.queueCountdownSeconds
scoreboard players reset %gauntlet.wave
scoreboard players reset %gauntlet.wave.timer

# storages
data remove storage spawning wave
data remove storage system.gauntlet player

# fx
time set noon

# clear forced chunks
forceload remove all

# schedules
schedule clear src:spawning/wave/start/1
schedule clear src:spawning/wave/start/2
schedule clear src:spawning/wave/start/3
schedule clear src:spawning/wave/start/4
schedule clear src:spawning/wave/start/5
schedule clear src:spawning/wave/start/6
schedule clear src:spawning/wave/start/7
schedule clear src:spawning/wave/start/8
schedule clear src:spawning/wave/start/9
schedule clear src:spawning/wave/start/10