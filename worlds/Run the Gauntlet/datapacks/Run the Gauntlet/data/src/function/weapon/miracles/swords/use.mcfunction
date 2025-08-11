## Uses swords of revealing light
function src:weapon/miracles/swords/throw/use
function src:weapon/miracles/swords/spiral/use

# fx
execute rotated ~ 0 positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 0 1 force
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 2 1

# reset
scoreboard players set @s weapon.cd2 60
scoreboard players remove @s cost.energy 40
scoreboard players reset @s in.sequence