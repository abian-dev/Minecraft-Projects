# example call: function kits:generic/functions/random_pos/start180 {"itt":"1","yaw":"180","pitch":"90","distMin":"0","distMax":"10","atPos":"function"}
## Starts The Entire Procedure
# initialize
$scoreboard players set %genFuncRandomPos.yaw kits.generic.constant $(yaw)
$scoreboard players set %genFuncRandomPos.pitch kits.generic.constant $(pitch)
$scoreboard players set %genFuncRandomPos.distMin kits.generic.constant $(distMin)
$scoreboard players set %genFuncRandomPos.distMax kits.generic.constant $(distMax)
$scoreboard players set %genFuncRandomPos.itt kits.generic.z $(itt)

# Calculate start yaw and end yaw
summon marker ~ ~ ~ {Tags:["genericFunctions","genFunc.randomPos"]}
tp @e[type=marker,limit=1,sort=nearest,tag=genFunc.randomPos] ~ ~ ~ facing entity @s
execute store result score %genFuncRandomPos.initYaw kits.generic.constant run data get entity @e[type=marker,limit=1,sort=nearest,tag=genFunc.randomPos] Rotation[0]
scoreboard players set %genFuncRandomPos.180 kits.generic.constant 180 
scoreboard players operation %genFuncRandomPos.initYaw kits.generic.constant += %genFuncRandomPos.180 kits.generic.constant

scoreboard players operation %genFuncRandomPos.startYaw kits.generic.constant = %genFuncRandomPos.initYaw kits.generic.constant
scoreboard players operation %genFuncRandomPos.endYaw kits.generic.constant = %genFuncRandomPos.initYaw kits.generic.constant

scoreboard players operation %genFuncRandomPos.startYaw kits.generic.constant -= %genFuncRandomPos.yaw kits.generic.constant
scoreboard players operation %genFuncRandomPos.endYaw kits.generic.constant += %genFuncRandomPos.yaw kits.generic.constant

# store
execute store result storage minecraft:kits.genfunc randomPos.yaw int 1 run scoreboard players get %genFuncRandomPos.endYaw kits.generic.constant
execute store result storage minecraft:kits.genfunc randomPos.yawNeg int 1 run scoreboard players get %genFuncRandomPos.startYaw kits.generic.constant
execute store result storage minecraft:kits.genfunc randomPos.pitch int 1 run scoreboard players get %genFuncRandomPos.pitch kits.generic.constant
execute store result storage minecraft:kits.genfunc randomPos.pitchNeg int -1 run scoreboard players get %genFuncRandomPos.pitch kits.generic.constant
execute store result storage minecraft:kits.genfunc randomPos.distMin int 1 run scoreboard players get %genFuncRandomPos.distMin kits.generic.constant
execute store result storage minecraft:kits.genfunc randomPos.distMax int 1 run scoreboard players get %genFuncRandomPos.distMax kits.generic.constant
$data modify storage minecraft:kits.genfunc randomPos.atPos set value "$(atPos)"

# run
execute as @e[type=marker,limit=1,sort=nearest,tag=genFunc.randomPos] at @s run function kits:generic/functions/random_pos/init with storage minecraft:kits.genfunc randomPos

# reset
scoreboard players reset %genFuncRandomPos.yaw
scoreboard players reset %genFuncRandomPos.pitch
scoreboard players reset %genFuncRandomPos.distMin
scoreboard players reset %genFuncRandomPos.distMax
scoreboard players reset %genFuncRandomPos.itt
scoreboard players reset %genFuncRandomPos.180
scoreboard players reset %genFuncRandomPos.initYaw
scoreboard players reset %genFuncRandomPos.startYaw
scoreboard players reset %genFuncRandomPos.endYaw
data remove storage minecraft:kits.genfunc randomPos