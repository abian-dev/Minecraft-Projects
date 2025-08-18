## Assign tasks to item displays
# armor
execute if entity @s[tag=berserker.dragonslayer] run return run function src:armor/berserker/dragonslayer/tick

# weapon
execute if entity @s[tag=chainsaw.rip] run return run function src:weapon/chainsaw/rip/tick
execute if entity @s[tag=excalibur.sword] run return run function src:weapon/excalibur/sword/tick