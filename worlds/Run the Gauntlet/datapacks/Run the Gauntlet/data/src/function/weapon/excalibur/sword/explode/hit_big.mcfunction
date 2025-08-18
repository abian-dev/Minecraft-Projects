## Hit by excalibur big explosion function
damage @s 10 src:bypass_player_attack by @p[tag=excalibur.sword.user]
execute positioned ~ ~1 ~ run function src:supply/resource/launch
scoreboard players set @s effect.frozen.duration 3