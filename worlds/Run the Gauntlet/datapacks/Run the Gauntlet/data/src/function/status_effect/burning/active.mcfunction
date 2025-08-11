## Executed at entities with burning every second
# duration
scoreboard players remove @s effect.burning.duration 1
execute if score @s effect.burning.duration matches ..0 run return run scoreboard players reset @s effect.burning.duration

# effect
damage @s 3 src:bypass_player_attack_no_kb by @s
execute if entity @s[nbt={HurtTime:10s}] positioned ~ ~1 ~ run function src:supply/armor/launch

# fx
particle flame ~ ~1 ~ 0 0 0 0.1 5 force
particle lava ~ ~1 ~ 0 0 0 0.1 1 force
playsound entity.player.hurt_on_fire neutral @a[distance=..5] ~ ~ ~ 1 0 1