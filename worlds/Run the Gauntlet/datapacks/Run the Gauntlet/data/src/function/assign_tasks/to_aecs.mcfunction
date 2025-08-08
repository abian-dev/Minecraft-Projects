## Assign tasks to area effect clouds
# generic
execute if entity @s[tag=vfx] run return run function src:generic/vfx/assign_tasks/to_aecs

# armor
execute if entity @s[tag=clothes.roll] run return run function src:armor/clothes/roll/tick

# weapons
execute if entity @s[tag=ballista.bullet] run return run function src:weapon/ballista/primary/tick
execute if entity @s[tag=ballista.destroyer] run return run function src:weapon/ballista/destroyer/tick
execute if entity @s[tag=precisionbolt.bullet] run return run function src:weapon/precision_bolt/primary/tick
execute if entity @s[tag=rocketlauncher.burst] run return run function src:weapon/rocket_launcher/lockon/firing/tick_burst
execute if entity @s[tag=rocketlauncher.rocket] run return run function src:weapon/rocket_launcher/primary/tick
execute if entity @s[tag=rocketlauncher.rockethoming] run return run function src:weapon/rocket_launcher/lockon/firing/tick_rocket
execute if entity @s[tag=supershotgun.bullet] run return run function src:weapon/super_shotgun/primary/tick
execute if entity @s[tag=supershotgun.meathook] run return run function src:weapon/super_shotgun/meathook/tick

execute if entity @s[tag=mirageedge.blistering] run return run function src:weapon/mirage_edge/blistering/tick
execute if entity @s[tag=mirageedge.rain] run return run function src:weapon/mirage_edge/rain/tick
execute if entity @s[tag=mirageedge.stinger] run return run function src:weapon/mirage_edge/stinger/tick
execute if entity @s[tag=yamato.jce] run return run function src:weapon/yamato/judgement_cut_end/tick
execute if entity @s[tag=yamato.jce.dash] run return run function src:weapon/yamato/judgement_cut_end/dash/tick
execute if entity @s[tag=yamato.judgementcut] run return run function src:weapon/yamato/judgement_cut/tick
execute if entity @s[tag=yamato.rapidslash] run return run function src:weapon/yamato/rapid_slash/tick
execute if entity @s[tag=yamato.voidslash] run return run function src:weapon/yamato/void_slash/tick

execute if entity @s[tag=limitless.blue] run return run function src:weapon/limitless/blue/lapse/tick
execute if entity @s[tag=limitless.red] run return run function src:weapon/limitless/red/reversal/tick
execute if entity @s[tag=limitless.purple] run return run function src:weapon/limitless/purple/tick
execute if entity @s[tag=limitless.grab] run return run function src:weapon/limitless/grab/tick
execute if entity @s[tag=limitless.grab.throw] run return run function src:weapon/limitless/grab/throw/tick
execute if entity @s[tag=limitless.void] run return run function src:weapon/limitless/void/tick
execute if entity @s[tag=miracles.holy] run return run function src:weapon/miracles/holy/tick
execute if entity @s[tag=miracles.soul] run return run function src:weapon/miracles/soul/tick
execute if entity @s[tag=miracles.swords.throw] run return run function src:weapon/miracles/swords/throw/tick
execute if entity @s[tag=miracles.swords.spiral] run return run function src:weapon/miracles/swords/tick
execute if entity @s[tag=miracles.swords.spiral.origin] run return run function src:weapon/miracles/swords/spiral/tick_origin