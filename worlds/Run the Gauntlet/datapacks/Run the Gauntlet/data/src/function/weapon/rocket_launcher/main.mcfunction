## Called every tick
execute if score @s in.rmb.off matches 1 unless score @s in.rmb.holdTime matches 5.. if score @s weapon.cd matches ..0 run function src:weapon/rocket_launcher/primary/use

# lock-on burst
execute if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd2 matches ..0 run function src:weapon/rocket_launcher/lockon/targeting/start
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd2 matches ..10 if entity @e[type=!#src:non_entity,distance=..40,scores={effect.lockedOn.duration=10..}] run function src:weapon/rocket_launcher/lockon/firing/use
execute if score @s in.rmb.off matches 1 if score @s in.rmb.holdTime matches 5.. if score @s weapon.cd2 matches ..10 unless entity @e[type=!#src:non_entity,distance=..40,scores={effect.lockedOn.duration=10..}] run function src:weapon/rocket_launcher/lockon/fail