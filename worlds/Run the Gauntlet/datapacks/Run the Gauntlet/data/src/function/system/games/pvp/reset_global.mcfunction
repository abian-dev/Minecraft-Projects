## Resets all global pvp
# global scores
scoreboard objectives setdisplay sidebar
scoreboard players reset %pvp.players
scoreboard players reset %pvp.playersAlive
scoreboard players reset %pvp.gameStarted
scoreboard players reset %pvp.queueCountdown
scoreboard players reset %pvp.queueCountdownSeconds

# storages
data remove storage system.pvp player