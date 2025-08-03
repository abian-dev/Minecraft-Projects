## Spectate game
tp @s 0 100 0 facing 0 100 1
tag @s add system.arena.spectator
tellraw @s [{"text":"The game has already started. You are now spectating.","color":"gold"}]
attribute @s gravity modifier add gravity.gauntlet.spectator -1 add_multiplied_total
effect give @s resistance infinite 4 true
effect give @s invisibility infinite 4 true