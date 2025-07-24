## Running executed at player
# on death
execute if score @s criterion.death matches 1.. run function src:system/games/gauntlet/ingame/death

# out of bounds
execute unless predicate src:location/gauntlet run function src:system/games/gauntlet/ingame/bounds

# spectator
execute if score @s system.deathTimer matches 0.. run function src:system/games/gauntlet/ingame/spectate
execute if score @s system.deathTimer matches 0 run function src:system/games/gauntlet/ingame/revive