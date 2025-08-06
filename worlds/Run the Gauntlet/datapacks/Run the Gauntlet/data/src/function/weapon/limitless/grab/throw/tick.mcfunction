## Executed at throw every tick
execute as @e[type=!#src:non_entity,distance=..10,tag=limitless.grab.thrown] at @s run function src:weapon/limitless/grab/throw/tick_target

# automatic despawn duration
execute unless score @s generic.math matches 10.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 10.. run function src:weapon/limitless/grab/throw/end