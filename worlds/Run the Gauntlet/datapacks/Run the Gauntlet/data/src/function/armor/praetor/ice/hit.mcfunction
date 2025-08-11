## Hit by explosion function
# vfx
execute rotated ~180 0 positioned ~ ~-0.1 ~ run function src:generic/vfx/player_outline/play_run {"particle":"end_rod"}

# effects
damage @s 2 src:bypass_player_attack_no_kb by @p[tag=praetor.ice.user]
scoreboard players add @s effect.frozen.duration 3
scoreboard players add @s effect.harvest.duration 3