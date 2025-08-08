## Leave queue
clear @s
function src:system/games/pvp/reset_local
execute unless score %pvp.gameStarted system.global matches 1 run function src:system/games/pvp/queue/update