## Hit head function
particle item{item:{id:brain_coral}} ~ ~1.2 ~ 0 0 0 0.2 10 force
particle item{item:{id:redstone_block}} ~ ~1.2 ~ 0 0 0 0.2 5 force
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 1 0 1
damage @s 8 src:bypass_player_attack by @p[tag=precisionbolt.pf.user]

# secondary explosion
particle flash ~ ~1.2 ~ 0 0 0 0 2 force
execute as @e[type=!#src:non_entity,distance=..5,tag=!precisionbolt.pf.user] at @s run damage @s 8 src:bypass_player_attack by @p[tag=precisionbolt.pf.user]