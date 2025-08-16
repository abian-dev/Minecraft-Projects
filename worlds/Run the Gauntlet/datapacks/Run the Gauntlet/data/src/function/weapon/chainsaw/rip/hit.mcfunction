## Hit by chainsaw rip function
# effects
damage @s 1 src:bypass_player_attack_no_kb by @p[tag=chainsaw.rip.user]
execute positioned ~ ~1 ~ run function src:supply/ammo/launch
scoreboard players set @s effect.harvest.duration 5
scoreboard players set @s effect.stun.duration 2

# fx
particle item{item:{id:redstone_block}} ~ ~1.0 ~ 0 0 0 0.2 2 force
playsound entity.bee.death neutral @a[distance=..20] ~ ~ ~ 1 0 1