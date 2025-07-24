## Executed at entities with stun every second
scoreboard players remove @s effect.stun.duration 1
execute if score @s effect.stun.duration matches ..0 run scoreboard players reset @s effect.stun.duration

# effect
effect give @s slowness 1 9 true
effect give @s weakness 1 9 true

# fx
particle enchanted_hit ~ ~2 ~ 0 0 0 0.5 5