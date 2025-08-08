# example call: function src:system/games/pvp/queue/assign {"target":"target","task":"add/reset"}
## Assigns player roles
# assign role
execute store result storage system.pvp player.index int 1 run scoreboard players get %pvp.players system.global
$execute as @a[$(target)] at @s run function src:system/games/pvp/queue/$(task) with storage system.pvp player

# iterate through players
scoreboard players remove %pvp.players system.global 1
$execute if score %pvp.players system.global matches 1.. run function src:system/games/pvp/queue/assign {"target":"$(target)","task":"$(task)"}
execute if score %pvp.players system.global matches 0 run data remove storage system.pvp player