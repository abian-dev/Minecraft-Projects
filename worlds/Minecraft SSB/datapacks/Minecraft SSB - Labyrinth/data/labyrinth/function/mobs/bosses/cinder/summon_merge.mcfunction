## Merges data to summoned entity
# attributes
attribute @s attack_damage base set 0
attribute @s movement_speed base set 0.3
attribute @s scale base set 1.25
attribute @s max_health base set 150
data modify entity @s Health set value 150
effect give @s invisibility infinite 0 true

# items
item replace entity @s armor.head with player_head[profile={id:[I;-325145161,-1727446985,-1247458176,411939203],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM3YTRiODdlNjY0MTJhOTVkNDg0ZTM0MTEyMDg2MzY3ZmExN2JjZWExZjQyZjdmOTAwZjM0NzkwN2VhNzE4OSJ9fX0="}]}]
item replace entity @s armor.chest with netherite_chestplate[trim={pattern:raiser,material:resin},unbreakable={}]
item replace entity @s armor.legs with netherite_leggings[trim={pattern:raiser,material:resin},unbreakable={}]
item replace entity @s armor.feet with netherite_boots[unbreakable={}]
item replace entity @s weapon.mainhand with carrot_on_a_stick[attribute_modifiers=[{type:attack_damage,amount:0,slot:mainhand,operation:add_value,id:"1752117617212"}],custom_model_data={floats:[99]},unbreakable={}]

# tags and scores
tag @s add labyrinth.cinder
tag @s add labyrinth.cinder.phase1
scoreboard players set @s labyrinth.cd 0
scoreboard players add %boss.cinder labyrinth.entity 1

# get phase 2 hp req
scoreboard players set %boss.cinder.2 labyrinth.constant 2
execute store result score %boss.cinder.p2hp labyrinth.health run data get entity @s Health
scoreboard players operation %boss.cinder.p2hp labyrinth.health /= %boss.cinder.2 labyrinth.constant
scoreboard players reset %boss.cinder.2

# data merge
data merge entity @s {Silent:1b}
data merge entity @s {IsBaby:0b}
data merge entity @s {IsImmuneToZombification:1b}
data merge entity @s {attributes:[{id:"minecraft:follow_range",base:100}]}
data merge entity @s {DeathLootTable:"tools:entities/boss/cinder"}
data merge entity @s {drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,body:0.000,mainhand:0.000,offhand:0.000,saddle:0.000}}
