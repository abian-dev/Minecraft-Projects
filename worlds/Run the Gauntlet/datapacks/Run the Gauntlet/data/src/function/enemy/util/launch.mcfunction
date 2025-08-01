# example call: function src:enemy/util/launch {"sVert":"1.0"}
## Launch to player function
# get source and target pos
execute store result score @s mob.motion.x run data get entity @s Pos[0] 1000
execute store result score @s mob.motion.y run data get entity @s Pos[1] 1000
execute store result score @s mob.motion.z run data get entity @s Pos[2] 1000

$tp @s ~ ~$(sVert) ~
execute store result score @s mob.motion.dx run data get entity @p Pos[0] 1000
execute store result score @s mob.motion.dy run data get entity @s Pos[1] 1000
execute store result score @s mob.motion.dz run data get entity @p Pos[2] 1000

# get vector from source to target
scoreboard players operation @s mob.motion.dx -= @s mob.motion.x
scoreboard players operation @s mob.motion.dy -= @s mob.motion.y
scoreboard players operation @s mob.motion.dz -= @s mob.motion.z

# apply motion
execute store result entity @s Motion[0] double 0.0002 run scoreboard players get @s mob.motion.dx
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get @s mob.motion.dy
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get @s mob.motion.dz

# reset
scoreboard players reset @s mob.motion.x
scoreboard players reset @s mob.motion.y
scoreboard players reset @s mob.motion.z
scoreboard players reset @s mob.motion.dx
scoreboard players reset @s mob.motion.dy
scoreboard players reset @s mob.motion.dz