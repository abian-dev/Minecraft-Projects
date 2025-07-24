# call this function on the moving entity every tick.
# this function only determines when the entity should bounce, not how it moves.
# to move the entity, add motion consistent with the generic.raycast.dist value (e.g., tp @s ^ ^ ^1).
# generic.raycast.dist = 4 corresponds to one block, as 4 * 0.25 = 1

## Executed Every Tick
# bounces when the object reaches the wall
scoreboard players remove @s generic.raycast.dist 4
execute if score @s generic.raycast.dist matches ..4 run function src:generic/functions/bounce/trigger