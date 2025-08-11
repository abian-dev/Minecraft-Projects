## Initializes ammo supply
execute store result score @s generic.constant run random value 1..4
execute if score @s generic.constant matches 1 run return run item replace entity @s armor.head with red_stained_glass_pane
execute if score @s generic.constant matches 2 run return run item replace entity @s armor.head with blue_stained_glass_pane
execute if score @s generic.constant matches 3 run return run item replace entity @s armor.head with orange_stained_glass_pane
execute if score @s generic.constant matches 4 run return run item replace entity @s armor.head with yellow_stained_glass_pane