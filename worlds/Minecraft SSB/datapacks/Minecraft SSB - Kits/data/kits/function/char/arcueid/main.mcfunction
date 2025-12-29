# Ability CDs
title @s[tag=!ArcueidMysticEyes] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Mystic Eyes:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability2CD"}},{"text":"/350","color":"white"},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"light_purple"},{"text":"/5","color":"light_purple"},{"text":" || "},{"text":"Magic Circuit:","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"aqua"},{"text":"%","color":"aqua"}]
title @s[tag=ArcueidMysticEyes] actionbar ["",{"text":"Rip Apart:","color":"red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Mystic Eyes Active:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.timer"},"color":"dark_red"},{"text":"/150","color":"dark_red"},{"text":" || "},{"text":"Vacuum:","color":"light_purple"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"light_purple"},{"text":"/5","color":"light_purple"},{"text":" || "},{"text":"Magic Circuit:","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"aqua"},{"text":"%","color":"aqua"}]

# Rip Apart
scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.ability1CD 20
scoreboard players set @s[scores={kits.ability1CD=101..}] kits.ability1CD 100

scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/arcueid/claws] as @s[scores={kits.ability1CD=100..}] at @s run function kits:char/arcueid/weapon1cos

# Mystic Eyes
scoreboard players add @s[scores={kits.ability2CD=..349}] kits.ability2CD 1
execute as @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/arcueid/claws] as @s[scores={kits.ability2CD=350..}] at @s run function kits:char/arcueid/weapon1shift

effect give @s[tag=ArcueidMysticEyes,scores={kits.criterion.attack=1..}] regeneration 1 2 true

scoreboard players add @s[tag=ArcueidMysticEyes] kits.timer 1
execute at @s[tag=ArcueidMysticEyes,scores={kits.timer=150..}] run function kits:char/arcueid/mysticeyesend

# Vacuum
execute if score @s kits.criterion.damage matches 1.. run function kits:char/arcueid/vacuum/comboreset
execute as @e[type=area_effect_cloud,tag=ArcueidVacuum] at @s run function kits:char/arcueid/vacuum/animation

# Chains
execute as @s[gamemode=!spectator,scores={kits.criterion.COS=1..},predicate=kits:items/arcueid/marblephantasm] as @s[scores={kits.ability4CD=100..}] at @s run function kits:char/arcueid/weapon2cos
execute as @e[type=area_effect_cloud,tag=ArcueidChains] at @s run function kits:char/arcueid/marblephantasm/animation
scoreboard players reset @s[scores={kits.timer2=40..}] kits.timer2
