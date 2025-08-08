## Running executed at player
# on death
execute if score @s criterion.death matches 1.. run function src:system/games/pvp/ingame/death

# out of bounds
execute unless predicate src:location/pvp_bounds run tp @s 0 70 -1000

# spectator
execute if score @s system.deathTimer matches 0.. run function src:system/games/pvp/ingame/spectate
execute if score @s system.deathTimer matches 0 run function src:system/games/pvp/ingame/revive