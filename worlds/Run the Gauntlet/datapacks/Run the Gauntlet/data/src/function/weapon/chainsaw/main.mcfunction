## Called every tick
# display stamina
title @s actionbar [{"text":"Stamina: ","color":"green"},{"score":{"name":"@s","objective":"cost.stamina"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"cost.staminaMax"},"color":"gray"}]

# moveset
execute if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.stamina matches 80.. run return run function src:weapon/chainsaw/rip/use