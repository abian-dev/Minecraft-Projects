## Starts dash to ground raycast
scoreboard players set @s generic.raycast.step2 40
execute rotated ~ 90 run function src:armor/berserker/dash/step
scoreboard players reset @s generic.raycast.step2
effect clear @s levitation