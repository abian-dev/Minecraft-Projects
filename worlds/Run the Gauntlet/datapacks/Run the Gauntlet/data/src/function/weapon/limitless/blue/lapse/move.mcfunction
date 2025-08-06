## Runs blue movement
# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run scoreboard players set @s generic.math 30

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 5
function src:weapon/limitless/blue/lapse/step
scoreboard players reset @s generic.raycast.step