## Launches upward
scoreboard players set @s generic.raycast.step 10
function src:weapon/yamato/upper_slash/launch_step
scoreboard players reset @s generic.raycast.step
effect give @s levitation 3 0 true