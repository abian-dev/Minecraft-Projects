## Countdown
# title
scoreboard players remove %pvp.queueCountdownSeconds system.global 1
execute if score %pvp.queueCountdown system.global matches ..20 run scoreboard players set %pvp.queueCountdownSeconds system.global 10
title @a[tag=system.pvp.inside] title [{"text":"Starting in ","color":"white"},{"score":{"name":"%pvp.queueCountdownSeconds","objective":"system.global"},"color":"green"}]

# sound
playsound block.note_block.pling neutral @a[tag=system.pvp.inside] ~ ~ ~ 1 1 1

# delay
schedule clear src:system/games/pvp/queue/countdown