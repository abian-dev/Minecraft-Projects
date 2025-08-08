## Countdown
# title
scoreboard players remove %gauntlet.queueCountdownSeconds system.global 1
execute if score %gauntlet.queueCountdown system.global matches ..20 run scoreboard players set %gauntlet.queueCountdownSeconds system.global 10
title @a[tag=system.gauntlet.inside] title [{"text":"Starting in ","color":"white"},{"score":{"name":"%gauntlet.queueCountdownSeconds","objective":"system.global"},"color":"green"}]

# sound
playsound block.note_block.pling neutral @a[tag=system.gauntlet.inside] ~ ~ ~ 1 1 1

# delay
schedule clear src:system/games/gauntlet/queue/countdown