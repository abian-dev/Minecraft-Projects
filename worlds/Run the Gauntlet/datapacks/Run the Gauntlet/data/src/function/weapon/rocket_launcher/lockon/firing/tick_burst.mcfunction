## Executed at burst every tick
# summons 3 rockets periodically
execute unless score @s generic.math matches 15.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 5 run function src:weapon/rocket_launcher/lockon/firing/summon
execute if score @s generic.math matches 10 run function src:weapon/rocket_launcher/lockon/firing/summon
execute if score @s generic.math matches 15 run function src:weapon/rocket_launcher/lockon/firing/summon
execute if score @s generic.math matches 15.. run kill @s