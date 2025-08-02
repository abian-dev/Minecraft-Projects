## Executed at user every tick
# dash
execute if predicate src:input/sneak if score @s armor.cd matches ..0 run function src:armor/berserker/dash/use

# double jump
execute unless block ~ ~-0.5 ~ #src:passable run function src:armor/berserker/jump/reset
execute unless block ~ ~-0.5 ~ #src:passable if predicate src:input/jump run tag @s add berserker.hasJumpedOnce
execute if block ~ ~-0.5 ~ #src:passable if score @s in.jump.off matches 1 run tag @s add berserker.releasedInAir
execute if entity @s[tag=berserker.hasJumpedOnce,tag=berserker.releasedInAir] if predicate src:input/jump run function src:armor/berserker/jump/use

# dragonslayer
execute if score @s in.rmb.off matches 1 if score @s armor.cd2 matches ..0 run function src:armor/berserker/dragonslayer/use