## Executed at entities with stun every second
scoreboard players remove @s effect.stun.duration 1
execute if score @s effect.stun.duration matches ..0 run attribute @s gravity modifier remove gravity.effect.stun
execute if score @s effect.stun.duration matches ..0 run return run scoreboard players reset @s effect.stun.duration

# effect
attribute @s gravity modifier add gravity.effect.stun -1 add_multiplied_total
effect give @s slowness 1 9 true
effect give @s weakness 1 9 true

# fx
particle enchanted_hit ~ ~2 ~ 0 0 0 0.5 5