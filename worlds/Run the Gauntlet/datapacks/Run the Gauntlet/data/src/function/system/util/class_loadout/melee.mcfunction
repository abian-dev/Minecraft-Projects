## Gives starting loadout for melee
function src:armor/berserker/give
function src:weapon/yamato/give
function src:weapon/mirage_edge/give
function src:weapon/excalibur/give

scoreboard players set @s cost.energy 198
scoreboard players set @s cost.stamina 198

# base stats
scoreboard players set @s cost.energyBase 1
scoreboard players set @s cost.energyMax 200
scoreboard players set @s cost.staminaBase 1
scoreboard players set @s cost.staminaMax 200