# example call: function labyrinth:generic/functions/slowcast/hit_block {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)"}
## Slowcast Hit Block Function
$$(hitBlock)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s labyrinth.generic.raycast.step
scoreboard players reset @s labyrinth.generic.raycast.dist
kill @s