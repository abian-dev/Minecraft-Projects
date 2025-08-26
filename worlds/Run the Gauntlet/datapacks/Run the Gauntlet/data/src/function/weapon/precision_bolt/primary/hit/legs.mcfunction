## Hit legs function
particle item{item:{id:bone}} ~ ~0.8 ~ 0 0 0 0.2 10 force
particle item{item:{id:redstone_block}} ~ ~0.8 ~ 0 0 0 0.2 5 force
playsound entity.zombie.break_wooden_door neutral @a[distance=..20] ~ ~ ~ 1 2 1
damage @s 8 src:bypass_player_attack by @p[tag=precisionbolt.pf.user]
scoreboard players set @s effect.stun.duration 4