## Runs once when a stun is applied
attribute @s attack_damage modifier add atkdmg.effect.stun -1 add_multiplied_total
attribute @s gravity modifier add gravity.effect.stun -1 add_multiplied_total
attribute @s movement_speed modifier add movespd.effect.stun -1 add_multiplied_total
tp @s @s
tag @s add effect.stun