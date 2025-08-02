## Called every tick
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd matches ..0 run return run function src:weapon/mirage_edge/round_trip/use

# blade moves
execute if score @s in.rmb.on matches 1.. if score @s in.s.on matches 1.. if score @s in.w.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/mirage_edge/rain/use
execute if score @s in.rmb.on matches 1 if score @s in.w.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/mirage_edge/stinger/use
execute if score @s in.rmb.on matches 1 if score @s in.s.on matches 1.. if score @s weapon.cd2 matches ..0 run return run function src:weapon/mirage_edge/blistering/use