## Initiates dash range logic
# initialize
scoreboard players set %yamato.jce.2 generic.constant 2
scoreboard players set @s generic.raycast.step 30

# run raycast
execute rotated ~ 0 positioned ~ ~1 ~ run function src:weapon/yamato/judgement_cut_end/dash/range/step

# reset
scoreboard players reset %yamato.jce.2
scoreboard players reset @s generic.raycast.step