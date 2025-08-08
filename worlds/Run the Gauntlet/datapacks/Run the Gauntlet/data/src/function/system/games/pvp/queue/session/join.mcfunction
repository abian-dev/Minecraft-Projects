## Join queue
clear @s
function src:system/games/pvp/queue/session/give_leave

execute unless score %pvp.players system.global matches 10.. run tp @s 0 88 -940 facing 0 88 -941
execute unless score %pvp.gameStarted system.global matches 1 unless score %pvp.players system.global matches 10.. run schedule function src:system/games/pvp/queue/update 10t append
execute unless score %pvp.gameStarted system.global matches 1 if score %pvp.players system.global matches 10.. run tellraw @s [{"text":"The queue is full.","color":"red"}]

execute if score %pvp.gameStarted system.global matches 1 run function src:system/games/pvp/queue/session/spectate