## Frame Step Function
# play frame
$data modify storage minecraft:labyrinth.genfunc frame.filepath set value "$(filepath)"
execute store result storage minecraft:labyrinth.genfunc frame.index int 1 run scoreboard players get @s labyrinth.generic.frame.index
function labyrinth:generic/functions/frame_step/frame with storage minecraft:labyrinth.genfunc frame

# next frame
scoreboard players add @s labyrinth.generic.frame.index 1
$scoreboard players set @s labyrinth.generic.frame.rate $(frameRate)