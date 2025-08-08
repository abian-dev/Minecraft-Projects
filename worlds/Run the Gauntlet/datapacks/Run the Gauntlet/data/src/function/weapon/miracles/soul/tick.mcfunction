## Executed at soul steal every tick
# phases
execute unless score @s generic.math matches 80.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 30 run function src:weapon/miracles/soul/open
execute if score @s generic.math matches 31.. run function src:weapon/miracles/soul/activated
execute if score @s generic.math matches 80.. run function src:weapon/miracles/soul/end