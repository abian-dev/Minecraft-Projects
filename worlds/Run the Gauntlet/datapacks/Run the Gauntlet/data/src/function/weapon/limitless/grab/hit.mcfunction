## Hit by grab function
damage @s 0.5 src:bypass_player_attack_no_kb by @p[tag=limitless.grab.user]
scoreboard players set @s effect.stun.duration 2

# get dragged by user
scoreboard players set %limitless.grab.drag generic.raycast.step 10
execute rotated as @p[tag=limitless.grab.user] rotated ~ 0 run function src:weapon/limitless/grab/drag/step
scoreboard players reset %limitless.grab.drag

# fx
particle item{item:{id:redstone_block}} ~ ~1 ~ 0 0 0 0.2 5 force
playsound entity.player.small_fall neutral @a[distance=..20] ~ ~ ~ 1 0 1