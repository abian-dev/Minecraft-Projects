## Executed at entities with harvest
# duration
scoreboard players remove @s effect.harvest.duration 1
execute if score @s effect.harvest.duration matches ..0 run return run scoreboard players reset @s effect.harvest.duration

# effect
execute positioned ~ ~1 ~ run function src:supply/ammo/launch