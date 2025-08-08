## When game ends
# results
execute if score %pvp.playersAlive system.global matches 0 run function src:system/games/pvp/ingame/results/draw
execute if score %pvp.playersAlive system.global matches 1 run execute as @a[tag=system.pvp.player] at @s run function src:system/games/pvp/ingame/results/win

# reset
function src:system/games/pvp/reset_global
kill @e[type=!player,predicate=src:location/pvp]