scoreboard players add @s kits.timer 1
attribute @s minecraft:knockback_resistance modifier add kb.evade.2b 1 add_value
execute if score @s kits.criterion.resistDmg matches 1.. run function kits:char/2b/evadesuccess
attribute @s[scores={kits.timer=10..}] minecraft:knockback_resistance modifier remove kb.evade.2b
effect clear @s[scores={kits.timer=10..}] resistance
tag @s[scores={kits.timer=10..}] remove 2BEvasion
