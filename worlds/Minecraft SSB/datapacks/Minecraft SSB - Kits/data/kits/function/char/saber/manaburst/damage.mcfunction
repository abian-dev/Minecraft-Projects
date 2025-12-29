damage @s 4 bypass:player_attack by @p[tag=Saber]
effect give @s minecraft:slowness 1 2 true
execute as @p[tag=Saber] run function kits:char/saber/mana/gain {mana:5}