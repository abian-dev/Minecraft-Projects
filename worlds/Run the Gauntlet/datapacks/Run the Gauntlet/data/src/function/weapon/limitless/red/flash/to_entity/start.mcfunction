## Starts detect raycast
scoreboard players set @s generic.raycast.step 60
execute anchored eyes run function src:weapon/limitless/red/flash/to_entity/step
scoreboard players reset @s generic.raycast.step