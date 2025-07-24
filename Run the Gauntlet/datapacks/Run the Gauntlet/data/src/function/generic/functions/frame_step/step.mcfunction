## Frame Step Function
# play frame
$data modify storage genfunc frame.filepath set value "$(filepath)"
execute store result storage genfunc frame.index int 1 run scoreboard players get @s generic.frame.index
function src:generic/functions/frame_step/frame with storage genfunc frame

# next frame
scoreboard players add @s generic.frame.index 1
$scoreboard players set @s generic.frame.rate $(frameRate)