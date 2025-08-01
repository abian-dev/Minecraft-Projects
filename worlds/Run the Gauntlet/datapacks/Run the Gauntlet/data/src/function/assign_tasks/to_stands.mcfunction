## Assign tasks to armor stands
execute if entity @s[tag=supply] run return run function src:supply/tick

# armor
execute if entity @s[tag=praetor.frag] run return run function src:armor/praetor/frag/tick
execute if entity @s[tag=praetor.ice] run return run function src:armor/praetor/ice/tick

# weapons
execute if entity @s[tag=mirageedge.roundtrip] run return run function src:weapon/mirage_edge/round_trip/tick
execute if entity @s[tag=yamato.jce.image] run return run function src:weapon/yamato/judgement_cut_end/image/tick