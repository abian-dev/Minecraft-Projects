## Runs red movement
# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/limitless/red/reversal/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 10
function src:weapon/limitless/red/reversal/step
scoreboard players reset @s generic.raycast.step