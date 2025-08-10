## Hit by aerial rave function
damage @s 5 src:bypass_player_attack_no_kb by @p[tag=yamato.upper.user]
scoreboard players set @s effect.stun.duration 2
function src:assign_tasks/schedule/to_entities

# fx
particle item{item:{id:redstone_block}} ~ ~1.0 ~ 0 0 0 0.2 5 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1