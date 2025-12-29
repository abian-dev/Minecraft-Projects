## Initializes Random Spawn Position
# init direction and max distance, then find
$execute store result entity @s Rotation[0] float 1 run random value $(yawNeg)..$(yaw)
$execute store result entity @s Rotation[1] float 1 run random value $(pitchNeg)..$(pitch)
$execute store result score @s kits.generic.raycast.step run random value $(distMin)..$(distMax)
execute rotated as @s run function kits:generic/functions/random_pos/find

# recursive call
scoreboard players remove %genFuncRandomPos.itt kits.generic.z 1
execute if score %genFuncRandomPos.itt kits.generic.z matches 1.. run function kits:generic/functions/random_pos/init with storage minecraft:kits.genfunc randomPos

# end of recursion
kill @s