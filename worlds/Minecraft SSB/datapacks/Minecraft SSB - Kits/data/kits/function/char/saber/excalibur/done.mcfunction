function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"gold","italic":false,"text":"Excalibur"}}}',newModifier:'"kits:character_specific/saber_reset"'}

playsound minecraft:item.armor.equip_netherite neutral @a[distance=..20] ~ ~ ~ 10 1.5 1
tag @s remove SaberExcalibur
scoreboard players reset @s kits.timer3