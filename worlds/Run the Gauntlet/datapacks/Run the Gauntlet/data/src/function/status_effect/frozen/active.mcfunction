## Executed at entities with frozen
# duration
scoreboard players remove @s effect.frozen.duration 1
execute if score @s effect.frozen.duration matches ..0 run return run scoreboard players reset @s effect.frozen.duration

# effect
damage @s 3 src:bypass_player_attack_no_kb by @s
scoreboard players set @s effect.stun.duration 2
execute positioned ~ ~1 ~ run function src:supply/health/launch
execute if entity @s[type=!player] positioned ~ ~1 ~ run function src:supply/resource/launch

# fx
particle end_rod ~ ~1 ~ 0 0 0 0.1 1 force
particle snowflake ~ ~1 ~ 0 0 0 0.1 5 force
playsound entity.player.hurt_freeze neutral @a[distance=..5] ~ ~ ~ 1 0 1