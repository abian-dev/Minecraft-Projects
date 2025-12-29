## Finds the Wall in the Direction of Movement
# track scores
scoreboard players add @s kits.generic.raycast.dist 1
scoreboard players remove @s kits.generic.raycast.step 1

# found wall
execute positioned ^ ^ ^0.25 run function kits:generic/functions/bounce/wall/check_block
execute if score @s kits.generic.raycast.step matches -1 run function kits:generic/functions/bounce/wall/find_normal

# recursive call
execute if score @s kits.generic.raycast.step matches 0.. positioned ^ ^ ^0.25 run function kits:generic/functions/bounce/wall/find