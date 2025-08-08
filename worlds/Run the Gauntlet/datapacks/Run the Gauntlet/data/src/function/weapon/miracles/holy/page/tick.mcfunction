## Executed at pages every tick
particle dust{color:[1.0,1.0,0.0],scale:1.0} ~ ~0.5 ~ 0 0 0 0 1 force

# automatic despawn duration
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 60.. run kill @s