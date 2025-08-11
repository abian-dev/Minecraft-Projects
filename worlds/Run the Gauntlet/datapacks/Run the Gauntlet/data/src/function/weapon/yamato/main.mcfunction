## Called every tick
# display stamina
title @s actionbar [{"text":"Stamina: ","color":"green"},{"score":{"name":"@s","objective":"cost.stamina"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"cost.staminaMax"},"color":"gray"}]

# moveset
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 15.. if score @s in.w.on matches 1.. if score @s weapon.cd2 matches ..0 if score @s cost.stamina matches 60.. run return run function src:weapon/yamato/judgement_cut_end/use
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd2 matches ..0 if score @s cost.stamina matches 10.. run return run function src:weapon/yamato/judgement_cut/use
execute if score @s in.rmb.on matches 1.. if score @s in.s.on matches 1.. if score @s in.w.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 25.. run return run function src:weapon/yamato/void_slash/use

# moveset: midair
execute if score @s criterion.dmgdealt matches 0.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 5.. if block ~ ~-0.5 ~ #src:passable run return run function src:weapon/yamato/aerial_rave/use
execute if score @s in.rmb.on matches 1 if score @s in.s.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 20.. if block ~ ~-0.5 ~ #src:passable run return run function src:weapon/yamato/aerial_cleave/use

# moveset: ground
execute if score @s in.rmb.on matches 1 if score @s in.s.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 20.. unless block ~ ~-0.5 ~ #src:passable run return run function src:weapon/yamato/upper_slash/use
execute if score @s in.rmb.on matches 1 if score @s in.w.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 25.. unless block ~ ~-0.5 ~ #src:passable run return run function src:weapon/yamato/rapid_slash/use