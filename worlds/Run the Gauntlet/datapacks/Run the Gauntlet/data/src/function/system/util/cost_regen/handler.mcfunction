## Adds stat when time is up
# apply bonuses: base (additive)
execute if predicate src:armorset/clothes run scoreboard players add %cost.energy.baseBonus cost.energyBase 1
execute if predicate src:armorset/clothes run scoreboard players add %cost.stamina.baseBonus cost.staminaBase 1

# apply bonuses: multiplier (additive)
scoreboard players set @s cost.regen.multiplier 1
execute if entity @s[tag=supply.resource.pickedUp] run scoreboard players add @s cost.regen.multiplier 20

# calculate total amount regenerated
scoreboard players operation %cost.regen.total cost.energy = @s cost.energyBase
scoreboard players operation %cost.regen.total cost.stamina = @s cost.staminaBase

scoreboard players operation %cost.regen.total cost.energy += %cost.energy.baseBonus cost.energyBase
scoreboard players operation %cost.regen.total cost.stamina += %cost.stamina.baseBonus cost.staminaBase

scoreboard players operation %cost.regen.total cost.energy *= @s cost.regen.multiplier
scoreboard players operation %cost.regen.total cost.stamina *= @s cost.regen.multiplier

scoreboard players operation @s cost.energy += %cost.regen.total cost.energy
scoreboard players operation @s cost.stamina += %cost.regen.total cost.stamina

execute if score @s cost.energy > @s cost.energyMax run scoreboard players operation @s cost.energy = @s cost.energyMax
execute if score @s cost.stamina > @s cost.staminaMax run scoreboard players operation @s cost.stamina = @s cost.staminaMax

scoreboard players reset %cost.regen.total
scoreboard players reset %cost.energy.baseBonus
scoreboard players reset %cost.stamina.baseBonus