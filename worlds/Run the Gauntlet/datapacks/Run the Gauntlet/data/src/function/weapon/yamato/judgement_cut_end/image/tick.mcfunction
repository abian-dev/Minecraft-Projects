## Executed at afterimage every tick
# execute rotated ~180 0 positioned ~ ~-0.1 ~ run function src:weapon/yamato/judgement_cut_end/image/vfx
particle squid_ink ~ ~1 ~ 0 0 0 0 1 force

# movement
execute unless score @s generic.math matches 30.. run scoreboard players add @s generic.math 1
execute unless score @s generic.math matches 10.. run tp @s ^ ^ ^2
execute if score @s generic.math matches 10.. facing entity @p[tag=yamato.jce.user] feet run tp @s ^ ^ ^2
execute if score @s generic.math matches 10.. if entity @p[distance=..2,tag=yamato.jce.user] run kill @s
execute if score @s generic.math matches 30.. run kill @s