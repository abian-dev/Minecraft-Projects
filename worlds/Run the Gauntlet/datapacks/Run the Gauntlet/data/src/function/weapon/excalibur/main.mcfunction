## Called every tick
# display energy
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"cost.energy"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"cost.energyMax"},"color":"gray"}]

# moveset
execute if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 if score @s cost.energy matches 200.. unless block ~ ~-0.5 ~ #src:passable run return run function src:weapon/excalibur/sword/use