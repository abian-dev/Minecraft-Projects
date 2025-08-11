## Executed at user every tick
# roll
execute if predicate src:input/sneak if score @s armor.cd matches ..0 run function src:armor/clothes/roll/use

# resource regeneration
# logic in src:system/util/cost_regen/handler