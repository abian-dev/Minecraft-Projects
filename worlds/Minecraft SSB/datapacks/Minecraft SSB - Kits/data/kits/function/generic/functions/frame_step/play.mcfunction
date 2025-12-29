# note: call this function on every tick
# example call: function kits:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"10","filepath":"filepath","end":"function"}
## Play Frames
# initialize
scoreboard players add @s kits.generic.z 1
$execute if score @s kits.generic.z matches 1 run function kits:generic/functions/frame_step/init {"maxFrames":"$(maxFrames)"}

# run
$execute if score @s kits.generic.frame.index <= @s kits.generic.constant run function kits:generic/functions/frame_step/run {"frameRate":"$(frameRate)","filepath":"$(filepath)"}
$execute if score @s kits.generic.frame.index > @s kits.generic.constant run function kits:generic/functions/frame_step/end {"end":"$(end)"}