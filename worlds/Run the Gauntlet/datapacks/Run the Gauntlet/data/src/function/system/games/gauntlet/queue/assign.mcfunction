# example call: function src:system/games/gauntlet/queue/assign {"target":"target","task":"add/reset"}
## Assigns player roles
# assign role
execute store result storage system.gauntlet player.index int 1 run scoreboard players get %gauntlet.players system.global
$execute as @a[$(target)] at @s run function src:system/games/gauntlet/queue/$(task) with storage system.gauntlet player

# iterate through players
scoreboard players remove %gauntlet.players system.global 1
$execute if score %gauntlet.players system.global matches 1.. run function src:system/games/gauntlet/queue/assign {"target":"$(target)","task":"$(task)"}
execute if score %gauntlet.players system.global matches 0 run data remove storage system.gauntlet player