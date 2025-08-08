## Hit by roll function
damage @s 1 src:bypass_player_attack_no_kb by @p[tag=clothes.roll.user]
scoreboard players set @s effect.stun.duration 5

# kb toward user
scoreboard players set %clothes.roll.kb generic.raycast.step 2
execute facing entity @p[tag=clothes.roll.user] feet rotated ~ 0 run function src:armor/clothes/roll/kb/step
scoreboard players reset %clothes.roll.kb