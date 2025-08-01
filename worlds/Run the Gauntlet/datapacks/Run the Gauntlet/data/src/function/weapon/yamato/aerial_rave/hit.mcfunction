## Hit by aerial rave function
damage @s 5 src:bypass_player_attack_no_kb by @p[tag=yamato.upper.user]
scoreboard players set @s effect.stun.duration 2

# fx
particle item{item:{id:redstone_block}} ~ ~1.0 ~ 0 0 0 0.2 5
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1