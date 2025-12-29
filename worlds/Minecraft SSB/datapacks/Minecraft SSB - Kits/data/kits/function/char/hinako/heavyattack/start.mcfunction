execute if entity @s[tag=HinakoPerfectDodgeAttack] run return run function kits:char/hinako/heavyattack/perfectdodgeattack
execute if score @s kits.timer2 matches 0 run function kits:char/hinako/heavyattack/swipe1
execute if score @s kits.timer2 matches 1 run function kits:char/hinako/heavyattack/swipe2
execute if score @s kits.timer2 matches 2 rotated ~ 0 run function kits:char/hinako/heavyattack/swipe3

attribute @s minecraft:attack_damage modifier add damage.heavyattack.hinako -20 add_value
attribute @s minecraft:attack_speed modifier add attackspeed.heavyattack.hinako -50 add_value
schedule function kits:char/hinako/heavyattack/end 10t replace

function kits:char/hinako/stamina/use {stamina: 20}
scoreboard players add @s kits.timer2 1
scoreboard players set @s[scores={kits.timer2=3..}] kits.timer2 0
scoreboard players set @s kits.ability1CD 0