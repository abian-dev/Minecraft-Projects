## Updates queue
# reset current roles
function src:system/games/gauntlet/queue/assign {"target":"tag=system.arena.inside","task":"role_reset"}

# add new tags
tag @a[predicate=src:location/gauntlet] add system.arena.unassigned
tag @a[predicate=src:location/gauntlet] add system.arena.inside

# assign new roles
execute store result score %arena.players system.global run execute if entity @a[predicate=src:location/gauntlet]
function src:system/games/gauntlet/queue/assign {"target":"tag=system.arena.unassigned,limit=1","task":"role_add"}
execute store result score %arena.players system.global run execute if entity @a[predicate=src:location/gauntlet]

# pending queue
scoreboard players set %arena.gameStarted system.global 0
scoreboard players reset %arena.queueCountdown
scoreboard players reset %arena.queueCountdownSeconds