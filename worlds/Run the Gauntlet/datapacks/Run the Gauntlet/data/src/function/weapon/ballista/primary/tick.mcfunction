## Executed at bullet every tick
# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/ballista/primary/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 10
function src:weapon/ballista/primary/step
scoreboard players reset @s generic.raycast.step