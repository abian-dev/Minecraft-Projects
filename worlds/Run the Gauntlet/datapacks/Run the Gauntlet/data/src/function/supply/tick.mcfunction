## Executed at supplies every tick
# automatic despawn duration
execute unless score @s generic.math matches 100.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 100.. run kill @s

# spin logic
execute if entity @s[tag=!supply.spin] if entity @p[distance=..10] run tag @s add supply.spin
execute if entity @s[tag=!supply.spin] unless block ~ ~-0.5 ~ #src:passable run tag @s add supply.spin
execute if entity @s[tag=supply.spin] run tp @s ~ ~ ~ ~10 ~

# pickup logic
execute if entity @p[distance=..2] run function src:supply/pickup
execute if entity @p[distance=..10] facing entity @p feet positioned ^ ^ ^0.5 run tp @s ~ ~ ~

# vfx
execute if entity @s[tag=supply.armor] run return run particle dust{color:[0.0,1.0,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=supply.health] run return run particle dust{color:[0.0,1.0,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force