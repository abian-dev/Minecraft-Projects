## Waiting for players
# at players who are waiting
title @a[tag=system.gauntlet.inside] actionbar [{"text":"Players: ","color":"gold"},{"score":{"name":"%gauntlet.players","objective":"system.global"},"color":"white"},{"text":"/10","color":"white"}]
effect give @a[tag=system.gauntlet.inside] resistance 1 4 true

# start requirement
execute unless score %gauntlet.players system.global matches 1.. run scoreboard players set %gauntlet.queueCountdown system.global 0
execute if score %gauntlet.players system.global matches 1.. run scoreboard players add %gauntlet.queueCountdown system.global 1

# countdown
execute if score %gauntlet.queueCountdown system.global matches 1.. run schedule function src:system/games/gauntlet/queue/countdown 1s append
execute if score %gauntlet.queueCountdown system.global matches 220.. run function src:system/games/gauntlet/queue/game_start