## Uses double jump
scoreboard players set @s generic.raycast.step2 5
function src:armor/berserker/jump/step
scoreboard players reset @s generic.raycast.step2

effect give @s slow_falling 1 0 true
playsound entity.wither.shoot neutral @a[distance=..10] ~ ~ ~ 0.1 0 0.1

# disable further jumps
function src:armor/berserker/jump/reset