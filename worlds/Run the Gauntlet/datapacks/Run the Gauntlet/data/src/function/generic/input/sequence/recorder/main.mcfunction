## Records a sequence of inputs
# record next input step
scoreboard players set %in.sequence.10 in.sequence 10
scoreboard players operation @s in.sequence *= %in.sequence.10 in.sequence

# movement inputs
execute if score @s in.w.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/forward
execute if score @s in.s.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/backward
execute if score @s in.a.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/left
execute if score @s in.d.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/right

execute if score @s in.jump.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/jump
execute if score @s in.sneak.holdTime matches 1 run return run function src:generic/input/sequence/recorder/return/sneak