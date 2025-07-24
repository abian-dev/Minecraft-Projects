# example call: function src:generic/functions/random_pos/start {"itt":"1","yaw":"180","pitch":"90","distMin":"0","distMax":"10","atPos":"function"}
## Starts The Entire Procedure
# initialize
$scoreboard players set %genFuncRandomPos.yaw generic.constant $(yaw)
$scoreboard players set %genFuncRandomPos.pitch generic.constant $(pitch)
$scoreboard players set %genFuncRandomPos.distMin generic.constant $(distMin)
$scoreboard players set %genFuncRandomPos.distMax generic.constant $(distMax)
$scoreboard players set %genFuncRandomPos.itt generic.z $(itt)

# store
execute store result storage genfunc randomPos.yaw int 1 run scoreboard players get %genFuncRandomPos.yaw generic.constant
execute store result storage genfunc randomPos.yawNeg int -1 run scoreboard players get %genFuncRandomPos.yaw generic.constant
execute store result storage genfunc randomPos.pitch int 1 run scoreboard players get %genFuncRandomPos.pitch generic.constant
execute store result storage genfunc randomPos.pitchNeg int -1 run scoreboard players get %genFuncRandomPos.pitch generic.constant
execute store result storage genfunc randomPos.distMin int 1 run scoreboard players get %genFuncRandomPos.distMin generic.constant
execute store result storage genfunc randomPos.distMax int 1 run scoreboard players get %genFuncRandomPos.distMax generic.constant
$data modify storage genfunc randomPos.atPos set value "$(atPos)"

# run
summon marker ~ ~ ~ {Tags:["genericFunctions","genFunc.randomPos"]}
execute as @e[type=marker,limit=1,sort=nearest,tag=genFunc.randomPos] at @s run function src:generic/functions/random_pos/init with storage genfunc randomPos

# reset
scoreboard players reset %genFuncRandomPos.yaw
scoreboard players reset %genFuncRandomPos.pitch
scoreboard players reset %genFuncRandomPos.distMin
scoreboard players reset %genFuncRandomPos.distMax
scoreboard players reset %genFuncRandomPos.itt
data remove storage genfunc randomPos