## Initiates dash range logic
scoreboard players set @s generic.raycast.step 30
execute rotated ~ 0 positioned ~ ~1 ~ run function src:weapon/yamato/rapid_slash/range/step
scoreboard players reset @s generic.raycast.step