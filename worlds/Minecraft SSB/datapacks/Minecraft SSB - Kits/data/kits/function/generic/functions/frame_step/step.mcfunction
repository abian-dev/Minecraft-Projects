## Frame Step Function
# play frame
$data modify storage minecraft:kits.genfunc frame.filepath set value "$(filepath)"
execute store result storage minecraft:kits.genfunc frame.index int 1 run scoreboard players get @s kits.generic.frame.index
function kits:generic/functions/frame_step/frame with storage minecraft:kits.genfunc frame

# next frame
scoreboard players add @s kits.generic.frame.index 1
$scoreboard players set @s kits.generic.frame.rate $(frameRate)