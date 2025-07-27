## Resets all global gauntlet data
# global scores
scoreboard objectives setdisplay sidebar
scoreboard players reset %arena.players
scoreboard players reset %arena.playersAlive
scoreboard players reset %arena.enemiesAlive
scoreboard players reset %arena.gameEndTimer
scoreboard players reset %arena.gameStarted
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds
scoreboard players reset %arena.wave

# storages
data remove storage spawning wave
data remove storage system.arena player

# fx
time set noon