## Called every tick
execute if score @s in.rmb.off matches 1 unless score @s in.rmb.holdTime matches 10.. if score @s weapon.cd matches ..0 run function src:weapon/ballista/primary/use

# destroyer blade
execute if score @s in.rmb.holdTime matches 15 if score @s weapon.cd matches ..0 run function src:weapon/ballista/destroyer/charge/low
execute if score @s in.rmb.holdTime matches 30 if score @s weapon.cd matches ..0 run function src:weapon/ballista/destroyer/charge/mid
execute if score @s in.rmb.holdTime matches 45 if score @s weapon.cd matches ..0 run function src:weapon/ballista/destroyer/charge/high
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 15.. if score @s weapon.cd matches ..0 run function src:weapon/ballista/destroyer/use