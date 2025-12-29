tag @s add HinakoPerfectDodge
attribute @s minecraft:knockback_resistance modifier add kb.dodge.hinako 1 add_value
attribute @s minecraft:movement_speed modifier add speed.dodge.hinako -1 add_value
effect give @s minecraft:resistance 1 9 true

playsound minecraft:entity.breeze.land neutral @a[distance=..30] ~ ~ ~ 3 1.25 1
particle block{block_state:"minecraft:dirt"} ~ ~0.35 ~ 1 0 1 0.5 35 force

function kits:char/hinako/stamina/use {stamina: 30}
function kits:char/hinako/dodge/direction
schedule function kits:char/hinako/dodge/delay 8t replace
scoreboard players set @s kits.ability2CD 0