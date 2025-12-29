tag @s add SaberSlashDmg
damage @s 5 bypass:player_attack by @p[tag=Saber]
execute as @p[tag=Saber] run function kits:char/saber/mana/gain {mana:8}