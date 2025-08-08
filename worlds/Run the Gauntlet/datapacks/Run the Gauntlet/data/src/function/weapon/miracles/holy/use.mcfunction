## Uses holy scriptures
tag @s add miracles.holy.user
attribute @s gravity modifier add gravity.miracles.holy -1 add_multiplied_total
function src:weapon/miracles/holy/range/start
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 2 1 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players reset @s in.sequence