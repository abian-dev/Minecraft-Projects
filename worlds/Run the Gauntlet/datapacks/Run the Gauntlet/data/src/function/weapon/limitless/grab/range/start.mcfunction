## Initiates dash range logic
scoreboard players set @s generic.raycast.step 60
execute rotated ~ 0 positioned ~ ~1 ~ run function src:weapon/limitless/grab/range/step
scoreboard players reset @s generic.raycast.step