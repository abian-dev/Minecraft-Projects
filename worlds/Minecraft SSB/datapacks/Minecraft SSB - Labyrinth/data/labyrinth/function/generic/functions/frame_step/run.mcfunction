## Runs Frames
# based on frame rate
scoreboard players remove @s labyrinth.generic.frame.rate 1
$execute if score @s labyrinth.generic.frame.rate matches ..0 run function labyrinth:generic/functions/frame_step/step {"frameRate":"$(frameRate)","filepath":"$(filepath)"}