effect give @s minecraft:levitation 1 0 true
damage @s 3 bypass:player_attack by @p[tag=Saber]
execute as @p[tag=Saber] run function kits:char/saber/mana/gain {mana:4}