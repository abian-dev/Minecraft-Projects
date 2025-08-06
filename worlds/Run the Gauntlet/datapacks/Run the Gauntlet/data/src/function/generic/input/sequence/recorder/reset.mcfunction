## Reset state and handle cooldowns before next sequence
# limit sequence length
execute if score @s in.sequence matches 999.. run scoreboard players operation @s in.sequence /= %in.sequence.10 in.sequence

# cooldowns
execute unless score @s in.sequence.cd2 matches 10.. run scoreboard players add @s in.sequence.cd2 5
scoreboard players set @s in.sequence.cd 2

# constants
scoreboard players reset %in.sequence.10