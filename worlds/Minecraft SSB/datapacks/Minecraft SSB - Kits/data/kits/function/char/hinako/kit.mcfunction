scoreboard players set @s kits.id 47
tag @s add Hinako
item replace entity @s armor.head with player_head[custom_name="Hinako",unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.head.hinako",type:"armor",amount:2,operation:"add_value",slot:"head"}],profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNkYzIyZTcxYWJiMDcwOGU1ODE2ZWQzYzA4MGM4ZjljZjJlODdmNDIzNGExNzI4MGU0YWM5NDNmZDdkZTYzYyJ9fX0="}]}] 1
item replace entity @s armor.chest with leather_chestplate[custom_name={"color":"red","italic":false,"text":"School Uniform"},trim={pattern:vex,material:iron},dyed_color=2241647,unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"armor.chest.hinako",type:"armor",amount:13,operation:"add_value",slot:"chest"},{id:"kb.chest.hinako",type:"knockback_resistance",amount:0.2,operation:"add_value",slot:"chest"}]]
item replace entity @s armor.legs with leather_leggings[custom_name={"color":"red","italic":false,"text":"School Uniform"},dyed_color=2241647,unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"tough.legs.hinako",type:"armor_toughness",amount:8,operation:"add_value",slot:"legs"}]]
item replace entity @s armor.feet with netherite_boots[custom_name={"color":"red","italic":false,"text":"School Uniform"},unbreakable={},custom_data={KitItem:1b},attribute_modifiers=[{id:"speed.feet.hinako",type:"movement_speed",amount:0.02,operation:"add_value",slot:"feet"}]] 1

give @s carrot_on_a_stick[custom_name={"color":"dark_red","italic":false,"text":"Fox Arm"},lore=["",[{"text":"Heavy Attack: ","italic":false,"color":"dark_aqua"},{"text":"RIGHT CLICK","italic":false,"color":"yellow"}],[{"text":"Costs 20 Stamina","italic":false,"color":"dark_gray"}],[{"text":"Tap to deal damage in front of you. Hold right click","italic":false,"color":"gray"}],[{"text":"to focus your next attack. Once focused, you will","italic":false,"color":"gray"}],[{"text":"dash forwards and deal massive damage and","italic":false,"color":"gray"}],[{"text":"slowness. Focusing ","italic":false,"color":"gray"},{"text":"will drain sanity.","italic":false,"color":"gray"}],"",[{"text":"Dodge: ","italic":false,"color":"aqua"},{"text":"SHIFT","italic":false,"color":"yellow"}],[{"text":"Costs 30 Stamina","italic":false,"color":"dark_gray"}],[{"text":"Dodge in a direction. You will be invulnerable during","italic":false,"color":"gray"}],[{"text":"the dodge. If you dodge at the perfect time of an","italic":false,"color":"gray"}],[{"text":"attack, you will regain all your stamina. Also, your next","italic":false,"color":"gray"}],[{"text":"heavy attack will dash towards an enemy and deal","italic":false,"color":"gray"}],[{"text":"massive damage and slowness.","italic":false,"color":"gray"}],"",[{"text":"Omamori [Serpent]: ","italic":false,"color":"red"},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"Costs 40 Sanity","italic":false,"color":"dark_gray"}],[{"text":"The next time you take damage, you will automatically","italic":false,"color":"gray"}],[{"text":"dash towards the target, heal, and deal damage. This","italic":false,"color":"gray"}],[{"text":"passive ","italic":false,"color":"gray"},{"text":"will then go on cooldown. Requires sanity to","italic":false,"color":"gray"}],[{"text":"activate.","italic":false,"color":"gray"}],"",[{"text":"Stamina: ","italic":false,"color":"light_purple"},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"Can hold up to 100 stamina. Stamina will recover over","italic":false,"color":"gray"}],[{"text":"time. If stamina reaches 0, you will be out of breath and","italic":false,"color":"gray"}],[{"text":"unable to do anything for a short while.","italic":false,"color":"gray"}],"",[{"text":"Sanity: ","italic":false},{"text":"PASSIVE","italic":false,"color":"yellow"}],[{"text":"Can hold up to 100 sanity. Regain sanity by eating golden","italic":false,"color":"gray"}],[{"text":"carrots or dying.","italic":false,"color":"gray"}]],unbreakable={},custom_model_data={floats:[103]},custom_data={KitItem:1b},attribute_modifiers=[{id:"damage.mainhand.hinako",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"speed.mainhand.hinako",type:"attack_speed",amount:20,operation:"add_value",slot:"mainhand"}]] 1

# Heavy Attack
scoreboard players set @s kits.ability1CD 18

# Dodge
scoreboard players set @s kits.ability2CD 5

# Omamori
scoreboard players set @s kits.ability3CD 198

# Stamina
scoreboard players set @s kits.ability4CD 100

# Sanity
scoreboard players set @s kits.ability5CD 100

# Perfect Dodge Attack Window
scoreboard players reset @s kits.timer

# Heavy Attack Pattern Cycle
scoreboard players set @s kits.timer2 0

# Time before regenerating stamina
scoreboard players reset @s kits.timer3