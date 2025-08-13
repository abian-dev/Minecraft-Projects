## Executed at user every tick
# blood punch
execute if score @s[tag=praetor.hasKilled] criterion.dmgdealt matches 0.. run function src:armor/praetor/punch/use
execute if score @s[tag=!praetor.hasKilled] ability.kills matches 1.. run tag @s add praetor.hasKilled

# dash
execute if predicate src:input/sneak if score @s armor.cd matches ..15 if score @s cost.stamina matches 5.. run function src:armor/praetor/dash/use

# double jump
execute unless block ~ ~-0.5 ~ #src:passable run function src:armor/praetor/jump/reset
execute unless block ~ ~-0.5 ~ #src:passable if predicate src:input/jump run tag @s add praetor.hasJumpedOnce
execute if block ~ ~-0.5 ~ #src:passable if score @s in.jump.off matches 1 run tag @s add praetor.releasedInAir
execute if entity @s[tag=praetor.hasJumpedOnce,tag=praetor.releasedInAir] if predicate src:input/jump if score @s cost.stamina matches 5.. run function src:armor/praetor/jump/use

# equipment launcher
execute if score @s in.rmb.off matches 1 if score @s armor.cd2 matches ..100 run function src:armor/praetor/use_launcher