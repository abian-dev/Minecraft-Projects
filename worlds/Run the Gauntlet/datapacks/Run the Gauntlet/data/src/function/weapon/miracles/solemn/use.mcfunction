## Uses solemn strike
tag @s add miracles.solemn.user
function src:weapon/miracles/solemn/range
tag @s remove miracles.solemn.user

# reset
scoreboard players set @s weapon.cd 10
scoreboard players remove @s cost.energy 10
scoreboard players reset @s in.sequence