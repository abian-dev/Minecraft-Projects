## Executed at entities with stun
# duration
scoreboard players remove @s effect.stun.duration 1

# effect
execute unless entity @s[tag=effect.stun] run function src:status_effect/stun/onset
execute if score @s effect.stun.duration matches ..0 run function src:status_effect/stun/reset

# fx
particle enchanted_hit ~ ~2 ~ 0 0 0 0.5 5 force