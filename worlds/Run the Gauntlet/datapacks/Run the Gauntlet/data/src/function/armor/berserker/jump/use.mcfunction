## Uses double jump
scoreboard players set @s generic.raycast.step2 5
function src:armor/berserker/jump/step
scoreboard players reset @s generic.raycast.step2

effect give @s slow_falling 1 0 true
playsound entity.breeze.shoot neutral @a[distance=..10] ~ ~ ~ 0.5 0.8 0.5

# disable further jumps
function src:armor/berserker/jump/reset