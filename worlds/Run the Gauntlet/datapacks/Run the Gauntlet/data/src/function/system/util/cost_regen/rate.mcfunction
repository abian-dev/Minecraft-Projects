## Controls regeneration rate
# default values
scoreboard players set @s cost.regen.rate 2

# variables
execute if score @s weapon.cd matches 0.. run scoreboard players operation @s cost.regen.rate += @s weapon.cd
execute if score @s weapon.cd2 matches 0.. run scoreboard players operation @s cost.regen.rate += @s weapon.cd2