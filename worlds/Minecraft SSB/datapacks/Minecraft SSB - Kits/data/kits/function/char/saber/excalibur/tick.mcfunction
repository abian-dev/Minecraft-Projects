## Executed at excalibur sword every tick
# phases
execute unless score @s kits.timer4 matches 60.. run scoreboard players add @s kits.timer4 1
execute if score @s kits.timer4 matches 1..19 run function kits:char/saber/excalibur/phase/channel
execute if score @s kits.timer4 matches 20..38 run function kits:char/saber/excalibur/phase/prepare
execute if score @s kits.timer4 matches 39..44 run function kits:char/saber/excalibur/phase/swing
execute if score @s kits.timer4 matches 45..55 run function kits:char/saber/excalibur/phase/explode
execute if score @s kits.timer4 matches 60.. run function kits:char/saber/excalibur/phase/end