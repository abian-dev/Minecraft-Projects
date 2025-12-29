# Ability CDs
execute if score @s kits.timer matches 0 run title @s actionbar ["",{"text":"Slash:","color":"aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability1CD"},"color":"white"},{"text":"/150","color":"white"},{"text":" || ","color":"white"},{"text":"Strike Air:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Mana:","color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s kits.timer matches 1 run title @s actionbar ["",{"text":"Slash:","color":"dark_aqua"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"dark_aqua"},{"text":"/70","color":"dark_aqua"},{"text":" || ","color":"white"},{"text":"Strike Air:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Mana:","color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score @s kits.timer matches 2 run title @s actionbar ["",{"text":"Slash:","color":"blue"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"blue"},{"text":"/70","color":"blue"},{"text":" || ","color":"white"},{"text":"Strike Air:","color":"gold"},{"text":" ","color":"white"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/100","color":"white"},{"text":" || ","color":"white"},{"text":"Mana:","color":"yellow"},{"text":" ","color":"yellow"},{"score":{"name":"@s","objective":"kits.ability4CD"},"color":"yellow"},{"text":"%","color":"yellow"}]

# Melee Attack
execute if score @s kits.criterion.attack matches 1.. run function kits:char/saber/mana/gain {mana:5}

# Slash
scoreboard players add @s[scores={kits.ability1CD=..149}] kits.ability1CD 1
execute as @s[predicate=kits:items/saber/excalibur,gamemode=!spectator,tag=!SaberExcaliburUse,tag=!SaberStrikeAirCharge,scores={kits.criterion.COS=1..}] at @s run function kits:char/saber/weapon1cos

scoreboard players add @s[scores={kits.timer=1..}] kits.timer2 1
scoreboard players set @s[scores={kits.timer2=70..}] kits.timer 0
scoreboard players reset @s[scores={kits.timer2=70..}] kits.timer2

# Strike Air
scoreboard players add @s[scores={kits.ability2CD=..99}] kits.ability2CD 1
execute as @s[scores={kits.ability2CD=100..},tag=!SaberExcaliburUse,predicate=kits:items/saber/excalibur] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:char/saber/weapon1shift

scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players reset @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff
scoreboard players add @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOn 1
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOn

execute if entity @s[tag=SaberStrikeAirCharge,gamemode=!spectator] at @s run function kits:char/saber/strikeair/charge

scoreboard players reset @s[scores={kits.criterion.shiftOn=40..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

# Excalibur
scoreboard players add @s[scores={kits.ability3CD=..19}] kits.ability3CD 1
execute if score @s kits.ability3CD matches 20.. as @s[scores={kits.ability4CD=25..},tag=!SaberStrikeAirCharge,predicate=kits:items/saber/avalon] as @s[gamemode=!spectator,scores={kits.criterion.COS=1..}] at @s run function kits:char/saber/weapon2cos
scoreboard players add @s[tag=SaberExcalibur,tag=Saber] kits.timer3 1
execute as @s[tag=SaberExcalibur,tag=Saber,scores={kits.timer3=400..}] at @s run function kits:char/saber/excalibur/done

execute as @e[type=item_display,tag=SaberExcaliburSword] at @s run function kits:char/saber/excalibur/tick
execute as @e[type=area_effect_cloud] at @s run function kits:char/saber/assign_tasks/to_aecs