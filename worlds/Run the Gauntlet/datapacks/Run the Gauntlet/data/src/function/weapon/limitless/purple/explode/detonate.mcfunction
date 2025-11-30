## Purple explosion detonation
tag @s add limitless.purple.explode
execute as @e[type=!#src:non_entity,distance=..10,tag=!limitless.purple.explode.user,team=!ally] at @s run function src:weapon/limitless/purple/explode/hit

# fx
function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"100","speed":"300","limit":"10","particle":"flash{color:[1.0,0.0,1.0,1.0]}"}
function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"100","rootsMin":"5","rootsMax":"10","branchesMin":"15","branchesMax":"20","branchLengthMin":"5","branchLengthMax":"10","particle":"dust{color:[1.0,0.0,1.0],scale:2.0}"}
playsound entity.lightning_bolt.impact neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 2 2 1

# reset
tag @s add limitless.purple.explode.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.purple.explode.curr,tag=limitless.purple.explode] run execute as @a[tag=limitless.purple.explode.user] run function src:weapon/limitless/purple/explode/reset
kill @s