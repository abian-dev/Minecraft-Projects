# example call: function labyrinth:generic/functions/random_pos/start {"itt":"1","yaw":"180","pitch":"90","distMin":"0","distMax":"10","atPos":"function"}
## Starts The Entire Procedure
# initialize
$scoreboard players set %genFuncRandomPos.yaw labyrinth.generic.constant $(yaw)
$scoreboard players set %genFuncRandomPos.pitch labyrinth.generic.constant $(pitch)
$scoreboard players set %genFuncRandomPos.distMin labyrinth.generic.constant $(distMin)
$scoreboard players set %genFuncRandomPos.distMax labyrinth.generic.constant $(distMax)
$scoreboard players set %genFuncRandomPos.itt labyrinth.generic.z $(itt)

# store
execute store result storage minecraft:labyrinth.genfunc randomPos.yaw int 1 run scoreboard players get %genFuncRandomPos.yaw labyrinth.generic.constant
execute store result storage minecraft:labyrinth.genfunc randomPos.yawNeg int -1 run scoreboard players get %genFuncRandomPos.yaw labyrinth.generic.constant
execute store result storage minecraft:labyrinth.genfunc randomPos.pitch int 1 run scoreboard players get %genFuncRandomPos.pitch labyrinth.generic.constant
execute store result storage minecraft:labyrinth.genfunc randomPos.pitchNeg int -1 run scoreboard players get %genFuncRandomPos.pitch labyrinth.generic.constant
execute store result storage minecraft:labyrinth.genfunc randomPos.distMin int 1 run scoreboard players get %genFuncRandomPos.distMin labyrinth.generic.constant
execute store result storage minecraft:labyrinth.genfunc randomPos.distMax int 1 run scoreboard players get %genFuncRandomPos.distMax labyrinth.generic.constant
$data modify storage minecraft:labyrinth.genfunc randomPos.atPos set value "$(atPos)"

# run
summon marker ~ ~ ~ {Tags:["genericFunctions","genFunc.randomPos"]}
execute as @e[type=marker,limit=1,sort=nearest,tag=genFunc.randomPos] at @s run function labyrinth:generic/functions/random_pos/init with storage minecraft:labyrinth.genfunc randomPos

# reset
scoreboard players reset %genFuncRandomPos.yaw
scoreboard players reset %genFuncRandomPos.pitch
scoreboard players reset %genFuncRandomPos.distMin
scoreboard players reset %genFuncRandomPos.distMax
scoreboard players reset %genFuncRandomPos.itt
data remove storage minecraft:labyrinth.genfunc randomPos