## Executed at rain blade every tick
particle dust{color:[0.0,1.0,1.0],scale:0.5} ^ ^ ^-0.50 0 0 0 0 1 force
particle dust{color:[0.0,1.0,1.0],scale:0.5} ^ ^ ^-0.25 0 0 0 0 1 force
particle dust{color:[0.0,1.0,1.0],scale:0.5} ^ ^ ^0.00 0 0 0 0 1 force
particle dust{color:[0.0,1.0,1.0],scale:0.5} ^ ^ ^0.25 0 0 0 0 1 force
particle dust{color:[0.0,1.0,1.0],scale:0.5} ^ ^ ^0.50 0 0 0 0 1 force

# phases
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 1 run tp @s ~ ~ ~ ~ 90
execute if score @s generic.math matches 10.. run tp @s ^ ^ ^1.5
execute if score @s generic.math matches 20.. run function src:weapon/mirage_edge/rain/end

# enemy collision
execute as @e[type=!#src:non_entity,distance=..1.5,tag=!mirageedge.rain.user,team=!ally] at @s run function src:weapon/mirage_edge/rain/hit