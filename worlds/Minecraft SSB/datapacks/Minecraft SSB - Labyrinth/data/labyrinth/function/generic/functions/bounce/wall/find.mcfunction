## Finds the Wall in the Direction of Movement
# track scores
scoreboard players add @s labyrinth.generic.raycast.dist 1
scoreboard players remove @s labyrinth.generic.raycast.step 1

# found wall
execute positioned ^ ^ ^0.25 run function labyrinth:generic/functions/bounce/wall/check_block
execute if score @s labyrinth.generic.raycast.step matches -1 run function labyrinth:generic/functions/bounce/wall/find_normal

# recursive call
execute if score @s labyrinth.generic.raycast.step matches 0.. positioned ^ ^ ^0.25 run function labyrinth:generic/functions/bounce/wall/find