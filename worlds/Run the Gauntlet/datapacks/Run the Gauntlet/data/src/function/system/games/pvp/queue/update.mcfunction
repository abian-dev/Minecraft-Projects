## Updates queue
# reset current roles
function src:system/games/pvp/queue/assign {"target":"tag=system.pvp.inside","task":"role_reset"}

# add new tags
tag @a[predicate=src:location/pvp] add system.pvp.unassigned
tag @a[predicate=src:location/pvp] add system.pvp.inside

# assign new roles
execute store result score %pvp.players system.global run execute if entity @a[predicate=src:location/pvp]
function src:system/games/pvp/queue/assign {"target":"tag=system.pvp.unassigned,limit=1","task":"role_add"}
execute store result score %pvp.players system.global run execute if entity @a[predicate=src:location/pvp]

# pending queue
scoreboard players set %pvp.gameStarted system.global 0
scoreboard players reset %pvp.queueCountdown
scoreboard players reset %pvp.queueCountdownSeconds