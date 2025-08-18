## Executed at excalibur sword every tick
# phases
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 1..19 run function src:weapon/excalibur/sword/phase/channel
execute if score @s generic.math matches 20..38 run function src:weapon/excalibur/sword/phase/prepare
execute if score @s generic.math matches 39..44 run function src:weapon/excalibur/sword/phase/swing
execute if score @s generic.math matches 45..55 run function src:weapon/excalibur/sword/phase/explode
execute if score @s generic.math matches 60.. run function src:weapon/excalibur/sword/phase/end