tag @s add HinakoPerfectDodgeAttack
scoreboard players set @s kits.ability4CD 100
tag @s[tag=HinakoResting] remove HinakoResting
tag @s[tag=HinakoTired] remove HinakoTired
scoreboard players reset @s kits.timer3
scoreboard players set @s kits.ability1CD 16
execute at @s run playsound minecraft:entity.breeze.shoot neutral @a[distance=..30] ~ ~ ~ 10 0 1
scoreboard players reset @s kits.timer