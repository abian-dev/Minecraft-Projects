## Dives downward
scoreboard players set @s generic.raycast.step 20
function src:weapon/yamato/aerial_cleave/dive_step
scoreboard players reset @s generic.raycast.step
effect clear @s levitation