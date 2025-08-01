## Initiates targeting logic
scoreboard players set @s generic.raycast.step 30
execute anchored eyes run function src:weapon/mirage_edge/rain/targeting/step
scoreboard players reset @s generic.raycast.step