## Calls random spawn only after the proxmity check passes
# constants
scoreboard players set %spawning.spawner.-1 generic.constant -1

# get abs vertical distance
execute store result score @s generic.y run data get entity @s Pos[1]
execute store result score @s generic.dy run data get entity @p Pos[1]
scoreboard players operation @s generic.dy -= @s generic.y
execute if score @s generic.dy matches ..0 run scoreboard players operation @s generic.dy *= %spawning.spawner.-1 generic.constant

# if distances is within allowed threshold
scoreboard players set @s generic.math 0
$execute if score @s generic.dy matches 0..$(detectVert) run scoreboard players add @s generic.math 1
$execute if entity @p[distance=..$(detectHorz)] run scoreboard players add @s generic.math 1
$execute if score @s generic.math matches 2 run function src:spawning/spawner/random_spawn/start with storage spawning spawner.$(spawnerID)

# reset
scoreboard players reset %spawning.spawner.-1