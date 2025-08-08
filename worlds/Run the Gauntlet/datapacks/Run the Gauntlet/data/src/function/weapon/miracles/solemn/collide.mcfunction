## When range raycast collides
# strike area with lightning
execute as @e[type=!#src:non_entity,distance=..5,tag=!miracles.solemn.user,team=!ally] at @s run function src:weapon/miracles/solemn/hit
summon lightning_bolt ~ ~ ~

# vfx
particle flash ~ ~1 ~ 0 0 0 0 2 force
execute positioned ~ ~1 ~ run function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"50","rootsMin":"5","rootsMax":"10","branchesMin":"15","branchesMax":"20","branchLengthMin":"5","branchLengthMax":"10","particle":"dust{color:[1.0,1.0,0.0],scale:1.0}"}

# reset
scoreboard players set @s generic.raycast.step 0