## Hit by aerial cleave function
damage @s 10 src:bypass_player_attack_no_kb by @p[tag=yamato.cleave.user]
scoreboard players set @s effect.stun.duration 3
function src:weapon/yamato/aerial_cleave/dive

# fx
particle item{item:{id:redstone_block}} ~ ~1.0 ~ 0 0 0 0.2 5 force
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1