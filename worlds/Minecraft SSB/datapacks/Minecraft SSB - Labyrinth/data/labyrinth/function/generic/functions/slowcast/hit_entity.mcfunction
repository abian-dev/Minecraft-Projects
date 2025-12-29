# example call: function labyrinth:generic/functions/slowcast/hit_entity {"slowcaster":"$(slowcaster)","hitEntity":"$(hitEntity)"}
## Slowcast Hit Entity Function
$$(hitEntity)
$tag @e[tag=$(slowcaster)] remove $(slowcaster)
scoreboard players reset @s labyrinth.generic.raycast.step
scoreboard players reset @s labyrinth.generic.raycast.dist
kill @s