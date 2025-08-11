## Called every tick
# display ammo
title @s actionbar [{"text":"Energy Cells: ","color":"blue"},{"score":{"name":"@s","objective":"cost.ammo.energy"},"color":"white"}]

# moveset
execute if score @s in.rmb.off matches 1 unless score @s in.rmb.holdTime matches 10.. if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 5.. run function src:weapon/ballista/primary/use

# moveset: destroyer blade
execute if score @s in.rmb.holdTime matches 15 if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 15.. run function src:weapon/ballista/destroyer/charge/low
execute if score @s in.rmb.holdTime matches 30 if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 15.. run function src:weapon/ballista/destroyer/charge/mid
execute if score @s in.rmb.holdTime matches 45 if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 15.. run function src:weapon/ballista/destroyer/charge/high
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 15.. if score @s weapon.cd matches ..0 if score @s cost.ammo.energy matches 15.. run function src:weapon/ballista/destroyer/use