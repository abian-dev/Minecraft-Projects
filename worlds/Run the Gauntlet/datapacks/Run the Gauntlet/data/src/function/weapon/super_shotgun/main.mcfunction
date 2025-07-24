## Called every tick
execute if score @s in.rmb.off matches 1 if score @s weapon.cd matches ..0 run function src:weapon/super_shotgun/primary/use
execute if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd2 matches ..0 run function src:weapon/super_shotgun/meathook/use