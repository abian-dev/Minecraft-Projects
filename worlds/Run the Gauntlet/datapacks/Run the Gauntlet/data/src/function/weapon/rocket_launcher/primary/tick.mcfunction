## Executed at rocket every tick
# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/rocket_launcher/primary/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 5
function src:weapon/rocket_launcher/primary/step
scoreboard players reset @s generic.raycast.step