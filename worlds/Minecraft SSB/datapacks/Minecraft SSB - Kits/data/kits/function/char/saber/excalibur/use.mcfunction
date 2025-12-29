## When excalibur sword is used
tag @s add SaberExcalibur
tag @s add SaberExcaliburUse
scoreboard players set @s kits.timer3 0

## Summon sword anim
summon item_display ~ ~ ~ {Tags:["SaberExcaliburSword"],item_display:"thirdperson_righthand",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{floats:[22]},"minecraft:unbreakable":{}}},transformation:{left_rotation:[0.3827f,0.0f,0.0f,0.9239f],right_rotation:[0.3827f,0.0f,0.0f,0.9239f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
execute as @e[type=item_display,limit=1,sort=nearest,tag=SaberExcaliburSword] at @s run function kits:char/saber/excalibur/init

# fx
effect give @s minecraft:mining_fatigue 3 9 true
effect give @s minecraft:weakness 3 9 true
effect give @s minecraft:absorption 3 4 true
effect give @s minecraft:slowness 3 2 true

particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ^ ^1 ^1 0 0 0 0 1 force
playsound block.beacon.activate neutral @a[distance=..40] ~ ~ ~ 2 1 1

function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":{"color":"dark_aqua","italic":false,"text":"Invisible Air"}}}',newModifier:'"kits:character_specific/saber_anim"'}

playsound minecraft:block.trial_spawner.ominous_activate neutral @a[distance=..30] ~ ~ ~ 3 0 1
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 force
scoreboard players set @s kits.ability4CD 0