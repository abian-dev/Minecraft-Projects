execute if score @s kits.criterion.shiftOn matches 1.. at @s run function kits:char/saber/strikeair/particles
execute if score @s kits.criterion.shiftOn matches 15 at @s[scores={kits.ability4CD=20..}] run playsound minecraft:entity.breeze.inhale neutral @a[distance=..30] ~ ~ ~ 2 2 1
execute if score @s kits.criterion.shiftOn matches 15.. at @s[scores={kits.ability4CD=20..}] run function kits:char/saber/strikeair/particlesaura
execute if score @s kits.criterion.shiftOn matches 30.. at @s[scores={kits.ability4CD=20..}] run function kits:char/saber/strikeair/air
execute if score @s kits.criterion.shiftOff matches 2.. at @s run function kits:char/saber/strikeair/stab
