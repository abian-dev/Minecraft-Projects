## Quickswap mechanic
scoreboard players operation @s selecteditem.slot.prev = @s selecteditem.slot.curr
execute store result score @s selecteditem.slot.curr run data get entity @s SelectedItemSlot

# if selected slot is different
execute unless score @s selecteditem.slot.curr = @s selecteditem.slot.prev run scoreboard players remove @s weapon.cd 20
execute unless score @s selecteditem.slot.curr = @s selecteditem.slot.prev run scoreboard players set @s quickswap.cd 8