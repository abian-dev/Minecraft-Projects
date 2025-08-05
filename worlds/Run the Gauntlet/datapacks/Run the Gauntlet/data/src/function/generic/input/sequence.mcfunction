## Records a sequence of inputs
# record next input step
scoreboard players set %in.sequence.10 in.sequence 10
scoreboard players operation @s in.sequence *= %in.sequence.10 in.sequence

# movement inputs
execute if predicate src:input/forward run scoreboard players add @s in.sequence 1
execute if predicate src:input/backward run scoreboard players add @s in.sequence 2
execute if predicate src:input/left run scoreboard players add @s in.sequence 3
execute if predicate src:input/right run scoreboard players add @s in.sequence 4

execute if predicate src:input/jump run scoreboard players add @s in.sequence 5
execute if predicate src:input/sneak run scoreboard players add @s in.sequence 6

# mouse inputs
execute if score @s in.rmb.on matches 1.. run scoreboard players add @s in.sequence 7

# reset
execute if score @s in.sequence matches 999.. run scoreboard players reset @s in.sequence
scoreboard players add @s in.sequence.cd2 5
scoreboard players set @s in.sequence.cd 3
scoreboard players reset %in.sequence.10