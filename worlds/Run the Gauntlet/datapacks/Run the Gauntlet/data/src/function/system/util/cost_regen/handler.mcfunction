## Adds stat when time is up
scoreboard players set %cost.regen.total cost.energy 1
scoreboard players set %cost.regen.total cost.stamina 1

scoreboard players operation %cost.regen.total cost.energy *= @s cost.regen.multiplier
scoreboard players operation %cost.regen.total cost.stamina *= @s cost.regen.multiplier

scoreboard players operation @s cost.energy += %cost.regen.total cost.energy
scoreboard players operation @s cost.stamina += %cost.regen.total cost.stamina

execute if score @s cost.energy > @s cost.energyMax run scoreboard players operation @s cost.energy = @s cost.energyMax
execute if score @s cost.stamina > @s cost.staminaMax run scoreboard players operation @s cost.stamina = @s cost.staminaMax

scoreboard players reset %cost.regen.total