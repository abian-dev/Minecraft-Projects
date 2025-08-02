## Starts detect raycast
scoreboard players set @s generic.raycast.step2 40
execute anchored eyes run function src:armor/berserker/dash/to_entity/step
scoreboard players reset @s generic.raycast.step2