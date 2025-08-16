## When chainsaw rip is used
tag @s add chainsaw.rip.user
summon item_display ~ ~ ~ {Tags:["chainsaw.rip"],item_display:"thirdperson_righthand",item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":{strings:["melee.chainsaw"]},"minecraft:unbreakable":{}}},transformation:{left_rotation:[0.1736f,-0.1005f,-0.4698f,0.8600f],right_rotation:[0.1736f,-0.1005f,-0.4698f,0.8600f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=item_display,limit=1,sort=nearest,tag=chainsaw.rip] at @s run function src:weapon/chainsaw/rip/init

# fx
effect give @s mining_fatigue 1 9 true
playsound entity.bee.death neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
scoreboard players set @s weapon.cd 30
scoreboard players remove @s cost.stamina 80