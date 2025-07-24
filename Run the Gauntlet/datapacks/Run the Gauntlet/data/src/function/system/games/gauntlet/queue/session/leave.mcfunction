## Leave queue
clear @s
function src:system/games/gauntlet/reset_local
execute unless score %arena.gameStarted system.global matches 1 run function src:system/games/gauntlet/queue/update