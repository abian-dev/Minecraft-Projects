## Found Random Spawn Position
# run function at spawn position
$execute if score @s generic.raycast.step matches -1 run execute positioned ^ ^ ^-1 run $(atPos)
$execute if score @s generic.raycast.step matches 0 run execute positioned ^ ^ ^ run $(atPos)