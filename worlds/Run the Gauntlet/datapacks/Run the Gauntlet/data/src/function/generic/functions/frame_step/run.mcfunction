## Runs Frames
# based on frame rate
scoreboard players remove @s generic.frame.rate 1
$execute if score @s generic.frame.rate matches ..0 run function src:generic/functions/frame_step/step {"frameRate":"$(frameRate)","filepath":"$(filepath)"}