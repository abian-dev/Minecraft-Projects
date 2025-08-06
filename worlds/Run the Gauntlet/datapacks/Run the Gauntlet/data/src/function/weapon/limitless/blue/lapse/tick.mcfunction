## Executed at blue every tick
# collision
execute as @e[type=!#src:non_entity,distance=..10,tag=!limitless.blue.user,team=!ally] at @s facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue] feet if block ^ ^ ^0.5 #src:passable positioned ^ ^ ^0.2 run tp @s ~ ~ ~
execute as @e[type=!#src:non_entity,distance=..3,tag=!limitless.blue.user,team=!ally] at @s run function src:weapon/limitless/blue/lapse/hit

# phases
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 0..19 run function src:weapon/limitless/blue/lapse/stationary
execute if score @s generic.math matches 20 rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue.origin] run tp @s ~ ~ ~ ~ ~
execute if score @s generic.math matches 21..29 run function src:weapon/limitless/blue/lapse/move
execute if score @s generic.math matches 30.. run function src:weapon/limitless/blue/lapse/stationary
execute if score @s generic.math matches 60.. run function src:weapon/limitless/blue/lapse/end