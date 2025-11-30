## Runs purple movement
# fx
function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"50","rootsMin":"0","rootsMax":"1","branchesMin":"15","branchesMax":"20","branchLengthMin":"5","branchLengthMax":"10","particle":"dust{color:[1.0,0.0,1.0],scale:1.0}"}
particle flash{color:[1.0,0.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.lightning_bolt.impact neutral @a[distance=..40] ~ ~ ~ 1 0 1

# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/limitless/purple/end

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 5
function src:weapon/limitless/purple/step
scoreboard players reset @s generic.raycast.step