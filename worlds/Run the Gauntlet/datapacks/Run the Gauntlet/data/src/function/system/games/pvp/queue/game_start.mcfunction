## When game starts
# game started
scoreboard players set %pvp.gameStarted system.global 1
scoreboard players reset %pvp.queueCountdown
scoreboard players reset %pvp.queueCountdownSeconds

# teleport players to respective locations
spreadplayers 0 -1000 10 45 under 70 false @a[tag=system.pvp.player]
tp @a[tag=system.pvp.player1] 0 70 -962 facing 0 70 -963
tp @a[tag=system.pvp.player2] 0 70 -1038 facing 0 70 -1037
tp @a[tag=system.pvp.player3] 38 70 -1000 facing 37 70 -1000
tp @a[tag=system.pvp.player4] -38 70 -1000 facing -37 70 -1000

# player pvp data
scoreboard players reset @a[tag=system.pvp.player] criterion.death
scoreboard players set @a[tag=system.pvp.player] system.lives 3
scoreboard objectives setdisplay sidebar system.lives

# give loadout
clear @a[tag=system.pvp.inside]
execute as @a[tag=system.pvp.inside,tag=class.magic] run function src:system/util/class_loadout/magic
execute as @a[tag=system.pvp.inside,tag=class.melee] run function src:system/util/class_loadout/melee
execute as @a[tag=system.pvp.inside,tag=class.ranged] run function src:system/util/class_loadout/ranged
effect give @a[tag=system.pvp.inside] absorption infinite 4 true
effect give @a[tag=system.pvp.inside] instant_health 1 9 true
effect give @a[tag=system.pvp.inside] saturation 1 9 true
give @a[tag=system.pvp.inside] golden_carrot 64

# fx
schedule clear src:system/games/pvp/queue/countdown
title @a[tag=system.pvp.inside] title [{"text":"FIGHT! ","color":"red"}]
playsound entity.ender_dragon.growl neutral @a[tag=system.pvp.inside] ~ ~ ~ 2 1 1