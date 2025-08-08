## When game ends
forceload add -117 0 117 -139
forceload add 117 139 -117 0

# results
execute if score %gauntlet.playersAlive system.global matches 0 as @a[tag=system.gauntlet.player] at @s run function src:system/games/gauntlet/ingame/results/lose
execute if score %gauntlet.playersAlive system.global matches 1.. as @a[tag=system.gauntlet.player] at @s run function src:system/games/gauntlet/ingame/results/win
execute as @a[tag=system.gauntlet.spectator] at @s run function src:system/games/gauntlet/reset_local

# reset
schedule function src:system/games/gauntlet/reset_global 5t