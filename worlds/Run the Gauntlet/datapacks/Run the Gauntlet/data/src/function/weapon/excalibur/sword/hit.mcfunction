## Hit by excalibur golden beam function
damage @s 0.2 src:bypass_player_attack_no_kb by @p[tag=excalibur.sword.user]
execute positioned ~ ~1 ~ run function src:supply/resource/launch
scoreboard players set @s effect.stun.duration 2