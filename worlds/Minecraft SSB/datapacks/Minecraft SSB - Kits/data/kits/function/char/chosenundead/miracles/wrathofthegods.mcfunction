scoreboard players remove @s kits.timer4 50
function kits:char/chosenundead/usestamina {stamina: 25}

execute positioned ~ ~1 ~ run function kits:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"100","limit":"5","particle":"dust{color:[1.000,1.000,1.000],scale:0.5}"}
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 3 force

execute as @e[distance=..6.5,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] at @s run function kits:char/chosenundead/miracles/wrathofthegodsdamage

playsound minecraft:entity.breeze.jump neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:block.beacon.power_select neutral @a[distance=..30] ~ ~ ~ 2 1.5 1
scoreboard players set @s kits.ability5CD 0