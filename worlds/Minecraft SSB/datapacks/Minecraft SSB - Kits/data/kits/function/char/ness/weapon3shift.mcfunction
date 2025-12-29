tag @s add NessPKFlash
attribute @s minecraft:movement_speed modifier add speed.flash.ness -1 add_value
attribute @s minecraft:attack_damage modifier add damage.flash.ness -20 add_value
scoreboard players reset @s kits.timer3
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 2 2 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1 force
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["PKFlashBomb"],DisabledSlots:2039583,equipment:{head:{id:"minecraft:slime_block",Count:1b}}}
summon area_effect_cloud ^ ^-1 ^10 {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50,Tags:["PKFlashPlace"]}
scoreboard players set @s kits.ability4CD 0
