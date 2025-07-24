### Triggers Bounce
# constants
scoreboard players set %genFuncBounce.-1 generic.constant -1

# get data
execute store result score @s generic.y run data get entity @s Rotation[0] 100
execute store result score @s generic.x run data get entity @s Rotation[1] 100

## Bounce Y
# to accommodate for +/-
execute if score @s generic.y matches -18000..0 run scoreboard players set @s generic.dy -18000
execute if score @s generic.y matches 0..18000 run scoreboard players set @s generic.dy 18000

# find reflected angle
execute if score @s generic.z matches 2 run scoreboard players operation @s generic.dy -= @s generic.y
execute if score @s generic.z matches 2 run scoreboard players operation @s generic.y = @s generic.dy
execute if score @s generic.z matches 1 run scoreboard players operation @s generic.y *= %genFuncBounce.-1 generic.constant

## Bounce X
# find reflected angle
execute if score @s generic.dz matches 1 run scoreboard players operation @s generic.x *= %genFuncBounce.-1 generic.constant

## Store Results
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s generic.y
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s generic.x
scoreboard players reset %genFuncBounce.-1 generic.constant

## Determine Next Bounce Behavior
scoreboard players set @s generic.raycast.dist 0
scoreboard players set @s generic.raycast.step 1000
execute at @s run function src:generic/functions/bounce/wall/find