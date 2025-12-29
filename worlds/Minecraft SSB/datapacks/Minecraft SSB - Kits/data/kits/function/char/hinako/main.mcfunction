title @s[tag=!HinakoTired] actionbar ["",{"text":"Omamori: ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"Stamina: ","color":"dark_green"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"dark_green"},{"text":"/100","color":"dark_green"},{"text":" || "},{"text":"Sanity: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"gold"},{"text":"/100","color":"gold"}]
title @s[tag=HinakoTired] actionbar ["",{"text":"Omamori: ","color":"dark_red"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/200","color":"white"},{"text":" || "},{"text":"TIRED: ","color":"dark_green","bold":true},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"dark_green"},{"text":"/100","color":"dark_green"},{"text":" || "},{"text":"Sanity: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability5CD"},"color":"gold"},{"text":"/100","color":"gold"}]

# Stamina
tag @s[tag=HinakoTired,scores={kits.ability4CD=99..}] remove HinakoTired
tag @s[tag=!HinakoTired,scores={kits.ability4CD=..0}] add HinakoTired
scoreboard players add @s[tag=!HinakoResting,scores={kits.ability4CD=..99}] kits.ability4CD 1
scoreboard players add @s[tag=HinakoResting] kits.timer3 1
tag @s[tag=HinakoResting,scores={kits.timer3=10..}] remove HinakoResting
scoreboard players reset @s[scores={kits.timer3=10..}] kits.timer3

# Sanity
execute if score @s kits.criterion.carrot matches 1.. run function kits:char/hinako/stamina/sanityregain {sanity: 50}
execute if score @s kits.criterion.death matches 1.. run function kits:char/hinako/stamina/sanityregain {sanity: 50}

# Dodge
scoreboard players add @s[scores={kits.ability2CD=..7}] kits.ability2CD 1
execute as @s[tag=!HinakoTired,scores={kits.criterion.shift=1..}] as @s[scores={kits.ability2CD=8..},gamemode=!spectator,predicate=kits:items/hinako/foxarm] at @s run function kits:char/hinako/dodge/start

execute if score @s[tag=HinakoPerfectDodge,tag=!HinakoPerfectDodgeAttack] kits.criterion.resistDmg matches 1.. run function kits:char/hinako/dodge/perfectdodge
scoreboard players add @s[tag=HinakoPerfectDodgeAttack] kits.timer 1
execute if entity @s[tag=HinakoPerfectDodgeAttack] at @s rotated ~ 0 run particle soul_fire_flame ^-0.5 ^1.25 ^0.25 0.15 0.15 0.15 0.01 2 force
execute if score @s[tag=HinakoPerfectDodgeAttack] kits.timer matches 20.. run function kits:char/hinako/dodge/perfectdodgeattackend

# Heavy Attack
scoreboard players add @s[scores={kits.ability1CD=..19}] kits.ability1CD 1
execute as @s[tag=!HinakoTired,scores={kits.criterion.COS=1..}] as @s[tag=!HinakoPerfectDodge,scores={kits.ability1CD=20..},gamemode=!spectator,predicate=kits:items/hinako/foxarm] at @s run function kits:char/hinako/heavyattack/start

# Omamori
scoreboard players add @s[scores={kits.ability3CD=..199}] kits.ability3CD 1
execute if score @s[tag=!HinakoTired,scores={kits.ability3CD=200..}] kits.ability5CD matches 1.. if score @s kits.criterion.damage matches 1.. run function kits:char/hinako/counter/start