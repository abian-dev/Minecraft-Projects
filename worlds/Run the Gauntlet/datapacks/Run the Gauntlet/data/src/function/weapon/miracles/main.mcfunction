## Called every tick
# moveset
execute if score @s in.sequence matches 1 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/miracles/holy/use
execute if score @s in.sequence matches 2 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/miracles/solemn/use

execute if score @s in.sequence matches 21 if score @s in.rmb.on matches 1.. if score @s weapon.cd2 matches ..0 run return run function src:weapon/miracles/swords/use
execute if score @s in.sequence matches 431 if score @s in.rmb.on matches 1.. if score @s weapon.cd2 matches ..0 run return run function src:weapon/miracles/soul/use

# build OR group
execute if score @s in.rmb.on matches 1.. run scoreboard players add %miracles.hasInput generic.math 1
execute if score @s in.sequence.cd matches 2 run scoreboard players add %miracles.hasInput generic.math 1
execute if score @s in.sequence.cd2 matches 1 run scoreboard players add %miracles.hasInput generic.math 1
execute if score @s weapon.cd matches ..0 run scoreboard players add %miracles.cdReady generic.math 1
execute if score @s weapon.cd2 matches ..0 run scoreboard players add %miracles.cdReady generic.math 1

# sequence indicator
execute if score %miracles.hasInput generic.math matches 1.. if score %miracles.cdReady generic.math matches 1.. run function src:generic/input/sequence/indicator/start

# reset temporary flags
scoreboard players reset %miracles.cdReady
scoreboard players reset %miracles.hasInput