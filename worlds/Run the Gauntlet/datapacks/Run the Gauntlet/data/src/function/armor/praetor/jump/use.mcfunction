## Uses double jump
scoreboard players set @s generic.raycast.step2 5
function src:armor/praetor/jump/step
scoreboard players reset @s generic.raycast.step2

effect give @s slow_falling 1 0 true
playsound entity.illusioner.prepare_mirror neutral @a[distance=..10] ~ ~ ~ 1 2 1

# disable further jumps
function src:armor/praetor/jump/reset