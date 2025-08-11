## Called every tick
# display ammo
title @s actionbar [{"text":"Bullets: ","color":"red"},{"score":{"name":"@s","objective":"cost.ammo.bullet"},"color":"white"}]

# moveset
execute if score @s in.rmb.off matches 1 if score @s weapon.cd matches ..0 if score @s cost.ammo.bullet matches 6.. run function src:weapon/precision_bolt/primary/use