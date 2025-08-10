## Resets stun
attribute @s attack_damage modifier remove atkdmg.effect.stun
attribute @s gravity modifier remove gravity.effect.stun
attribute @s movement_speed modifier remove movespd.effect.stun
scoreboard players reset @s effect.stun.duration
tag @s remove effect.stun