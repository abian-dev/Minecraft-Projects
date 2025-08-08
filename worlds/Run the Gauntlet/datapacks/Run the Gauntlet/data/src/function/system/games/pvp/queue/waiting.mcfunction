## Waiting for players
# at players who are waiting
title @a[tag=system.pvp.inside] actionbar [{"text":"Players: ","color":"gold"},{"score":{"name":"%pvp.players","objective":"system.global"},"color":"white"},{"text":"/10","color":"white"}]
effect give @a[tag=system.pvp.inside] resistance 1 4 true

# start requirement
execute unless score %pvp.players system.global matches 2.. run scoreboard players set %pvp.queueCountdown system.global 0
execute if score %pvp.players system.global matches 2.. run scoreboard players add %pvp.queueCountdown system.global 1

# countdown
execute if score %pvp.queueCountdown system.global matches 1.. run schedule function src:system/games/pvp/queue/countdown 1s append
execute if score %pvp.queueCountdown system.global matches 220.. run function src:system/games/pvp/queue/game_start