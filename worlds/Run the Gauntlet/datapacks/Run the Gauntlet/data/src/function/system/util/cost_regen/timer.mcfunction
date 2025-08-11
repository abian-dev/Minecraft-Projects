## Controls regeneration countdown timer
scoreboard players remove @s cost.regen.rate 1
execute if score @s cost.regen.rate matches ..0 run function src:system/util/cost_regen/handler