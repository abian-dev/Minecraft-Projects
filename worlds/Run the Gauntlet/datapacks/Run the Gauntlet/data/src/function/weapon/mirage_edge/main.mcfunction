## Called every tick
# display stamina
title @s actionbar [{"text":"Stamina: ","color":"green"},{"score":{"name":"@s","objective":"cost.stamina"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"cost.staminaMax"},"color":"gray"}]

# moveset
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 20.. run return run function src:weapon/mirage_edge/round_trip/use

execute if score @s in.rmb.on matches 1.. if score @s in.s.on matches 1.. if score @s in.w.on matches 1.. if score @s weapon.cd2 matches ..0 if score @s cost.stamina matches 10.. run return run function src:weapon/mirage_edge/rain/use
execute if score @s in.rmb.on matches 1 if score @s in.w.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 20.. run return run function src:weapon/mirage_edge/stinger/use
execute if score @s in.rmb.on matches 1 if score @s in.s.on matches 1.. if score @s weapon.cd2 matches ..0 if score @s cost.stamina matches 10.. run return run function src:weapon/mirage_edge/blistering/use