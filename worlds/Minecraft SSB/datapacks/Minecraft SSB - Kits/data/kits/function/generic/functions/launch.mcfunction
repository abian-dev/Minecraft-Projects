# example call: function kits:generic/functions/launch {"sVert":"0.1","sHorz":"0.1","power":"0.002"}
## Launch Function
# get pos
execute store result score @s kits.generic.x run data get entity @s Pos[0] 1000
execute store result score @s kits.generic.y run data get entity @s Pos[1] 1000
execute store result score @s kits.generic.z run data get entity @s Pos[2] 1000

# get point
$tp @s ^ ^$(sVert) ^$(sHorz)
execute store result score @s kits.generic.dx run data get entity @s Pos[0] 1000
execute store result score @s kits.generic.dy run data get entity @s Pos[1] 1000
execute store result score @s kits.generic.dz run data get entity @s Pos[2] 1000

# get vector from pos to point
scoreboard players operation @s kits.generic.dx -= @s kits.generic.x
scoreboard players operation @s kits.generic.dy -= @s kits.generic.y
scoreboard players operation @s kits.generic.dz -= @s kits.generic.z

# store vector into motion
$execute store result entity @s Motion[0] double $(power) run scoreboard players get @s kits.generic.dx
$execute store result entity @s Motion[1] double $(power) run scoreboard players get @s kits.generic.dy
$execute store result entity @s Motion[2] double $(power) run scoreboard players get @s kits.generic.dz

# reset
scoreboard players reset @s kits.generic.x
scoreboard players reset @s kits.generic.y
scoreboard players reset @s kits.generic.z
scoreboard players reset @s kits.generic.dx
scoreboard players reset @s kits.generic.dy
scoreboard players reset @s kits.generic.dz