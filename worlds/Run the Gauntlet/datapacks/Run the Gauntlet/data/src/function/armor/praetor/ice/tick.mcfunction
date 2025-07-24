## Executed at ice bomb every tick
# vfx
particle dust{color:[0.0,1.0,1.0],scale:1.0} ~ ~0.3 ~ 0.2 0.2 0.2 0 10 force
particle snowflake ~ ~0.3 ~ 0 0 0 0 1 force

# time until detonation
scoreboard players add @s generic.math 1
execute if score @s generic.math matches 30.. run function src:armor/praetor/ice/explode