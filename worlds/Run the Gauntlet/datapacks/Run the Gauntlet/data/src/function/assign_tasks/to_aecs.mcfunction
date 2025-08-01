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

execute if entity @s[tag=mirageedge.rain] run return run function src:weapon/mirage_edge/rain/tick
execute if entity @s[tag=mirageedge.stinger] run return run function src:weapon/mirage_edge/stinger/tick
execute if entity @s[tag=yamato.jce] run return run function src:weapon/yamato/judgement_cut_end/tick
execute if entity @s[tag=yamato.jce.dash] run return run function src:weapon/yamato/judgement_cut_end/dash/tick
execute if entity @s[tag=yamato.judgementcut] run return run function src:weapon/yamato/judgement_cut/tick
execute if entity @s[tag=yamato.rapidslash] run return run function src:weapon/yamato/rapid_slash/tick
execute if entity @s[tag=yamato.voidslash] run return run function src:weapon/yamato/void_slash/tick