## Executed at unlimited void every tick
# freeze and trap
execute as @e[type=!#src:non_entity,distance=..9,tag=!limitless.void.user,team=!ally] at @s run scoreboard players set @s effect.frozen.duration 2
execute as @e[type=!#src:non_entity,distance=9..,tag=limitless.void.trapped] at @s run function src:weapon/limitless/void/trap/start

# phases
execute unless score @s generic.math matches 90.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 1 run tag @e[type=!#src:non_entity,distance=..9] add limitless.void.trapped
execute if score @s generic.math matches 90.. run function src:weapon/limitless/void/end