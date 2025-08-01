## Hit by aerial cleave function
damage @s 10 src:bypass_player_attack_no_kb by @p[tag=yamato.cleave.user]
scoreboard players set @s effect.stun.duration 2
function src:weapon/yamato/aerial_cleave/dive
data merge entity @s[type=!player] {Motion:[0.0,0.2,0.0]}

# fx
particle item{item:{id:redstone_block}} ~ ~1.0 ~ 0 0 0 0.2 5
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1