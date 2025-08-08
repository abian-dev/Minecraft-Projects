## Initiates roll range logic
scoreboard players set @s generic.raycast.step 15
execute rotated ~ 0 positioned ~ ~1 ~ run function src:armor/clothes/roll/range/step
scoreboard players reset @s generic.raycast.step