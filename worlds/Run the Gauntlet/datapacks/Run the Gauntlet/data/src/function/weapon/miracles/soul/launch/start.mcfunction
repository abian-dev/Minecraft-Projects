## Launches upward
scoreboard players set @s generic.raycast.step 5
function src:weapon/miracles/soul/launch/step
scoreboard players reset @s generic.raycast.step
attribute @s gravity modifier add gravity.miracles.soul -1 add_multiplied_total
effect give @s levitation 1 0 true