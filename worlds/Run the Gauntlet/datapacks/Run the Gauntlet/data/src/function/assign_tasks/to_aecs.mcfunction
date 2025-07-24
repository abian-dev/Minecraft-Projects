## Assign tasks to area effect clouds
# generic
execute if entity @s[tag=vfx] run return run function src:generic/vfx/assign_tasks/to_aecs

# weapons
execute if entity @s[tag=ballista.bullet] run return run function src:weapon/ballista/primary/tick
execute if entity @s[tag=ballista.destroyer] run return run function src:weapon/ballista/destroyer/tick
execute if entity @s[tag=precisionbolt.bullet] run return run function src:weapon/precision_bolt/primary/tick
execute if entity @s[tag=rocketlauncher.burst] run return run function src:weapon/rocket_launcher/lockon/firing/tick_burst
execute if entity @s[tag=rocketlauncher.rocket] run return run function src:weapon/rocket_launcher/primary/tick
execute if entity @s[tag=rocketlauncher.rockethoming] run return run function src:weapon/rocket_launcher/lockon/firing/tick_rocket
execute if entity @s[tag=supershotgun.bullet] run return run function src:weapon/super_shotgun/primary/tick
execute if entity @s[tag=supershotgun.meathook] run return run function src:weapon/super_shotgun/meathook/tick