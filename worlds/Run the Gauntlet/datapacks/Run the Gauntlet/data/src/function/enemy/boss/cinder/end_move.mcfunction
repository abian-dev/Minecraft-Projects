## When soul of cinder ends his move
# reset
scoreboard players set @s labyrinth.cd 0
scoreboard players set @s labyrinth.math 0
data merge entity @s {NoAI:0b}
tag @s remove labyrinth.cinder.noAi