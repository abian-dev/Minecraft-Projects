## Initiates targeting range logic
scoreboard players set @s generic.raycast.step 60
execute anchored eyes run function src:weapon/miracles/solemn/step
scoreboard players reset @s generic.raycast.step