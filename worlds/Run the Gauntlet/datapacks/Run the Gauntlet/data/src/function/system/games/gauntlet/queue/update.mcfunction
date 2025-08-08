## Updates queue
# reset current roles
function src:system/games/gauntlet/queue/assign {"target":"tag=system.gauntlet.inside","task":"role_reset"}

# add new tags
tag @a[predicate=src:location/gauntlet] add system.gauntlet.unassigned
tag @a[predicate=src:location/gauntlet] add system.gauntlet.inside

# assign new roles
execute store result score %gauntlet.players system.global run execute if entity @a[predicate=src:location/gauntlet]
function src:system/games/gauntlet/queue/assign {"target":"tag=system.gauntlet.unassigned,limit=1","task":"role_add"}
execute store result score %gauntlet.players system.global run execute if entity @a[predicate=src:location/gauntlet]

# pending queue
scoreboard players set %gauntlet.gameStarted system.global 0
scoreboard players reset %gauntlet.queueCountdown
scoreboard players reset %gauntlet.queueCountdownSeconds