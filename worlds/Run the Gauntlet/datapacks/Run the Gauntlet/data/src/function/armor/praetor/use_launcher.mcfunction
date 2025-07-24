## Uses a random equipment launcher ability
execute store result score %praetor.launch.id generic.math run random value 1..2
execute if score %praetor.launch.id generic.math matches 1 run function src:armor/praetor/frag/use
execute if score %praetor.launch.id generic.math matches 2 run function src:armor/praetor/ice/use
scoreboard players reset %praetor.launch.id