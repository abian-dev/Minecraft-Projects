# example call: function labyrinth:generic/functions/slowcast/hit_end {"slowcaster":"$(slowcaster)","hitEnd":"$(hitEnd)"}
## Slowcast Hit End Function
$$(hitEnd)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s labyrinth.generic.raycast.step
scoreboard players reset @s labyrinth.generic.raycast.dist
kill @s