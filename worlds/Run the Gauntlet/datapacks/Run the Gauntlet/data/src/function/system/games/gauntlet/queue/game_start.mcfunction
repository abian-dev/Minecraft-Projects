## When game starts
# game started
scoreboard players set %gauntlet.gameStarted system.global 1
scoreboard players reset %gauntlet.queueCountdown
scoreboard players reset %gauntlet.queueCountdownSeconds

# player gauntlet data
team join ally @a[tag=system.gauntlet.inside]
tp @a[tag=system.gauntlet.inside] 0 70 0 facing 0 70 1

# give loadout
clear @a[tag=system.gauntlet.inside]
execute as @a[tag=system.gauntlet.inside,tag=class.magic] run function src:system/util/class_loadout/magic
execute as @a[tag=system.gauntlet.inside,tag=class.melee] run function src:system/util/class_loadout/melee
execute as @a[tag=system.gauntlet.inside,tag=class.ranged] run function src:system/util/class_loadout/ranged
effect give @a[tag=system.gauntlet.inside] instant_health 1 9 true
effect give @a[tag=system.gauntlet.inside] saturation 1 9 true
give @a[tag=system.gauntlet.inside] golden_carrot 64

# reset
scoreboard players reset @a[tag=system.gauntlet.inside] criterion.death
scoreboard players reset @a[tag=system.gauntlet.inside] system.deathTimer
scoreboard players set %gauntlet.wave system.global 1
execute store result storage spawning wave.num int 1 run scoreboard players get %gauntlet.wave system.global

# fx
time set night
schedule clear src:system/games/gauntlet/queue/countdown
# title @a[tag=system.gauntlet.inside] title [{"text":"FIGHT! ","color":"red"}]
# playsound entity.wither.spawn neutral @a[tag=system.gauntlet.inside] ~ ~ ~ 2 0 1