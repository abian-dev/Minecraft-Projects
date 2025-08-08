## Join queue
clear @s
function src:system/games/gauntlet/queue/session/give_leave

execute unless score %gauntlet.players system.global matches 10.. run tp @s 0 70 0 facing 0 70 1
execute unless score %gauntlet.gameStarted system.global matches 1 unless score %gauntlet.players system.global matches 10.. run schedule function src:system/games/gauntlet/queue/update 10t append
execute unless score %gauntlet.gameStarted system.global matches 1 if score %gauntlet.players system.global matches 10.. run tellraw @s [{"text":"The queue is full.","color":"red"}]

execute if score %gauntlet.gameStarted system.global matches 1 run function src:system/games/gauntlet/queue/session/spectate