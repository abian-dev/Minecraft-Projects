## When excalibur sword is used
tag @s add excalibur.sword.user
summon item_display ~ ~ ~ {Tags:["excalibur.sword"],item_display:"thirdperson_righthand",item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_model_data":{strings:["melee.excalibur"]},"minecraft:unbreakable":{}}},transformation:{left_rotation:[0.3827f,0.0f,0.0f,0.9239f],right_rotation:[0.3827f,0.0f,0.0f,0.9239f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}
execute as @e[type=item_display,limit=1,sort=nearest,tag=excalibur.sword] at @s run function src:weapon/excalibur/sword/init
scoreboard players set @s effect.stun.duration 6

# fx
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound block.beacon.activate neutral @a[distance=..40] ~ ~ ~ 2 1 1

# reset
scoreboard players set @s weapon.cd 60
scoreboard players remove @s cost.energy 200