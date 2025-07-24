## Executed at bullet every tick
# vfx
function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"20","rootsMin":"1","rootsMax":"2","branchesMin":"4","branchesMax":"5","branchLengthMin":"4","branchLengthMax":"5","particle":"dust{color:[0.0,1.0,1.0],scale:0.5}"}

# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/precision_bolt/primary/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 10
function src:weapon/precision_bolt/primary/step
scoreboard players reset @s generic.raycast.step