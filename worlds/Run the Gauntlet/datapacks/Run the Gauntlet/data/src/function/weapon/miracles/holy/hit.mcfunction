## Hit by holy scriptures function
damage @s 1 src:bypass_player_attack_no_kb by @p[tag=miracles.holy.user]
scoreboard players set @s effect.stun.duration 5

# kb toward user
scoreboard players set %miracles.holy.kb generic.raycast.step 2
execute facing entity @p[tag=miracles.holy.user] feet rotated ~ 0 run function src:weapon/miracles/holy/kb/step
scoreboard players reset %miracles.holy.kb