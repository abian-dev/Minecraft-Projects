## Called every tick
# moveset
execute if score @s in.sequence matches 1 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/red/reversal/use
execute if score @s in.sequence matches 11 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/red/flash/use

execute if score @s in.sequence matches 2 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/blue/attract/use
execute if score @s in.sequence matches 22 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/blue/lapse/use

execute if score @s in.sequence matches 21 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/purple/use
execute if score @s in.sequence matches 111 if score @s in.rmb.on matches 1.. if score @s weapon.cd matches ..0 run return run function src:weapon/limitless/grab/use
execute if score @s in.sequence matches 134 if score @s in.rmb.on matches 1.. if score @s weapon.cd2 matches ..0 unless entity @e[type=area_effect_cloud,tag=limitless.void] run return run function src:weapon/limitless/void/use

# build OR group
execute if score @s in.rmb.on matches 1.. run scoreboard players add %limitless.hasInput generic.math 1
execute if score @s in.sequence.cd matches 2 run scoreboard players add %limitless.hasInput generic.math 1
execute if score @s in.sequence.cd2 matches 1 run scoreboard players add %limitless.hasInput generic.math 1
execute if score @s weapon.cd matches ..0 run scoreboard players add %limitless.cdReady generic.math 1

# sequence indicator
execute if score %limitless.hasInput generic.math matches 1.. if score %limitless.cdReady generic.math matches 1.. run function src:generic/input/sequence/indicator/start

# reset temporary flags
scoreboard players reset %limitless.cdReady
scoreboard players reset %limitless.hasInput