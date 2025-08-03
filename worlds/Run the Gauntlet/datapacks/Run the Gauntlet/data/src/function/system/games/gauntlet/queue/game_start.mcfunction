## When game starts
# game started
scoreboard players set %arena.gameStarted system.global 1
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds

# player data
clear @a[tag=system.arena.inside]
tp @a[tag=system.arena.inside] 0 70 0 facing 0 70 1
execute as @a[tag=system.arena.inside,tag=class.magic] run function src:system/util/class_loadout/magic
execute as @a[tag=system.arena.inside,tag=class.melee] run function src:system/util/class_loadout/melee
execute as @a[tag=system.arena.inside,tag=class.ranged] run function src:system/util/class_loadout/ranged

# reset
scoreboard players reset @a[tag=system.arena.inside] criterion.death
scoreboard players reset @a[tag=system.arena.inside] system.deathTimer
scoreboard players set %arena.wave system.global 1
execute store result storage spawning wave.num int 1 run scoreboard players get %arena.wave system.global

# fx
time set night
schedule clear src:system/games/gauntlet/queue/countdown
# title @a[tag=system.arena.inside] title [{"text":"FIGHT! ","color":"red"}]
# playsound entity.wither.spawn neutral @a[tag=system.arena.inside] ~ ~ ~ 2 0 1