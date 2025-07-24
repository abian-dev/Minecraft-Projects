## Hit by blood punch function
damage @s 15 src:bypass_player_attack by @p[tag=praetor.punch.user]

# fx
execute positioned ~ ~1 ~ run function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"20","rootsMin":"3","rootsMax":"5","branchesMin":"10","branchesMax":"15","branchLengthMin":"10","branchLengthMax":"15","particle":"dust{color:[1.0,0.3,0.0],scale:1}"}
particle flash ~ ~1 ~ 0 0 0 0 1 force
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 1 0 1