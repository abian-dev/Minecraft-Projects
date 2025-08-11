## Controls regeneration rate
# default values
execute unless score @s cost.energyMax matches 200.. run scoreboard players set @s cost.energyMax 200
execute unless score @s cost.staminaMax matches 200.. run scoreboard players set @s cost.staminaMax 200
execute unless score @s cost.regen.multiplier matches 1.. run scoreboard players set @s cost.regen.multiplier 1
scoreboard players set @s cost.regen.rate 2

# variables
execute if score @s weapon.cd matches 0.. run scoreboard players operation @s cost.regen.rate += @s weapon.cd
execute if score @s weapon.cd2 matches 0.. run scoreboard players operation @s cost.regen.rate += @s weapon.cd2