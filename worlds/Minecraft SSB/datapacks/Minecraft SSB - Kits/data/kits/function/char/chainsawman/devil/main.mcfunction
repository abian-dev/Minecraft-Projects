execute unless items entity @s armor.head minecraft:player_head[custom_name="Chainsaw Devil"] run function kits:char/chainsawman/devil/head

effect give @s strength 1 0 true

scoreboard players add @s[scores={kits.timer2=..299}] kits.timer2 1
execute at @s[scores={kits.timer2=300..}] run function kits:char/chainsawman/devil/stop