## When soul of cinder gets hurt
execute store result score @s labyrinth.health run data get entity @s Health
execute if entity @s[tag=labyrinth.cinder.phase1,tag=!labyrinth.cinder.phase2Trans] if score @s labyrinth.health < %boss.cinder.p2hp labyrinth.health run tag @s add labyrinth.cinder.phase2Trans
scoreboard players add @s[tag=!labyrinth.cinder.noAi] labyrinth.cdMax 5
execute if score @s labyrinth.cdMax matches 51.. run scoreboard players set @s labyrinth.cdMax 50