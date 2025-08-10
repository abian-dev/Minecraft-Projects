## Hit by throw function
tag @s add limitless.grab.thrown
damage @s 5 src:bypass_player_attack by @p[tag=limitless.grab.user]
scoreboard players set @s effect.stun.duration 3
function src:assign_tasks/schedule/to_entities