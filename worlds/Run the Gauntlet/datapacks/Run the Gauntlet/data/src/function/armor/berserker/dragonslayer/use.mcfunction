## When dragonslayer is used
tag @s add berserker.dragonslayer.user
summon item_display ~ ~ ~ {Tags:["berserker.dragonslayer"],item_display:"thirdperson_righthand",item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":{strings:["melee.dragonslayer"]},"minecraft:unbreakable":{}}},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0.7071f,0f,0.7071f],translation:[0f,0f,1f],scale:[1.5f,1.5f,1.5f]}}
execute as @e[type=item_display,limit=1,sort=nearest,tag=berserker.dragonslayer] at @s run function src:armor/berserker/dragonslayer/init

# effects
damage @s 5 src:bypass_player_attack_no_kb by @s
effect give @s saturation 1 1 true

# fx
playsound entity.ender_dragon.growl neutral @a[distance=..20] ~ ~ ~ 0.2 2 0.2
playsound entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
scoreboard players set @s armor.cd2 60