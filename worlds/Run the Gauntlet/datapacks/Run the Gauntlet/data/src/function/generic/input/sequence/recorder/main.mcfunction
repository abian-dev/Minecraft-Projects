## Records a sequence of inputs
# record next input step
scoreboard players set %in.sequence.10 in.sequence 10
scoreboard players operation @s in.sequence *= %in.sequence.10 in.sequence

# movement inputs
execute if predicate src:input/forward run return run function src:generic/input/sequence/recorder/return/forward
execute if predicate src:input/backward run return run function src:generic/input/sequence/recorder/return/backward
execute if predicate src:input/left run return run function src:generic/input/sequence/recorder/return/left
execute if predicate src:input/right run return run function src:generic/input/sequence/recorder/return/right

execute if predicate src:input/jump run return run function src:generic/input/sequence/recorder/return/jump
execute if predicate src:input/sneak run return run function src:generic/input/sequence/recorder/return/sneak