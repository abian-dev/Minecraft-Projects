## Called every tick
# display ammo
title @s actionbar [{"text":"Energy Cells: ","color":"blue"},{"score":{"name":"@s","objective":"cost.ammo.energy"},"color":"white"}]

# moveset
execute if score @s in.rmb.off matches 1 if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 1.. run function src:weapon/plasma_rifle/primary/use