### Triggers Bounce
# constants
scoreboard players set %genFuncBounce.-1 labyrinth.generic.constant -1

# get data
execute store result score @s labyrinth.generic.y run data get entity @s Rotation[0] 100
execute store result score @s labyrinth.generic.x run data get entity @s Rotation[1] 100

## Bounce Y
# to accommodate for +/-
execute if score @s labyrinth.generic.y matches -18000..0 run scoreboard players set @s labyrinth.generic.dy -18000
execute if score @s labyrinth.generic.y matches 0..18000 run scoreboard players set @s labyrinth.generic.dy 18000

# find reflected angle
execute if score @s labyrinth.generic.z matches 2 run scoreboard players operation @s labyrinth.generic.dy -= @s labyrinth.generic.y
execute if score @s labyrinth.generic.z matches 2 run scoreboard players operation @s labyrinth.generic.y = @s labyrinth.generic.dy
execute if score @s labyrinth.generic.z matches 1 run scoreboard players operation @s labyrinth.generic.y *= %genFuncBounce.-1 labyrinth.generic.constant

## Bounce X
# find reflected angle
execute if score @s labyrinth.generic.dz matches 1 run scoreboard players operation @s labyrinth.generic.x *= %genFuncBounce.-1 labyrinth.generic.constant

## Store Results
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s labyrinth.generic.y
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s labyrinth.generic.x
scoreboard players reset %genFuncBounce.-1 labyrinth.generic.constant

## Determine Next Bounce Behavior
scoreboard players set @s labyrinth.generic.raycast.dist 0
scoreboard players set @s labyrinth.generic.raycast.step 1000
execute at @s run function labyrinth:generic/functions/bounce/wall/find