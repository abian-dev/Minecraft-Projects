## Hit by attract function
damage @s 7 src:bypass_player_attack_no_kb by @p[tag=limitless.blue.attract.user]
scoreboard players set @s effect.stun.duration 3

# attraction
scoreboard players set %limitless.blue.attract generic.raycast.step 20
execute facing entity @p[tag=limitless.blue.attract.user] feet rotated ~ 0 run function src:weapon/limitless/blue/attract/step
scoreboard players reset %limitless.blue.attract