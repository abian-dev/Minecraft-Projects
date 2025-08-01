## Executed at void slash every tick
# delayed slash
execute unless score @s generic.math matches 15.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 15 run function src:weapon/yamato/void_slash/slash
execute if score @s generic.math matches 15.. run kill @s