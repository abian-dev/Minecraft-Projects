## Gives starting loadout for ranged
function src:armor/praetor/give
function src:weapon/super_shotgun/give
function src:weapon/precision_bolt/give
function src:weapon/rocket_launcher/give
function src:weapon/ballista/give
function src:weapon/chainsaw/give

scoreboard players set @s cost.ammo.shell 24
scoreboard players set @s cost.ammo.bullet 180
scoreboard players set @s cost.ammo.energy 250
scoreboard players set @s cost.ammo.rocket 13

# base stats
scoreboard players set @s cost.energyBase 1
scoreboard players set @s cost.energyMax 200
scoreboard players set @s cost.staminaBase 1
scoreboard players set @s cost.staminaMax 200