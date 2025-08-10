## Hit by purple explosion function
damage @s 15 src:bypass_player_attack_no_kb by @p[tag=limitless.purple.explode.user]
scoreboard players set @s effect.burning.duration 5
scoreboard players set @s effect.stun.duration 5
function src:assign_tasks/schedule/to_entities