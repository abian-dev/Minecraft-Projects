## Executed at dragonslayer every tick
tp @s ~ ~ ~ ~30 ~
execute positioned ^ ^ ^1 run function src:armor/berserker/dragonslayer/vfx_sword
execute positioned ^ ^ ^3 as @e[type=!#src:non_entity,distance=..3,tag=!berserker.dragonslayer.user,team=!ally] at @s run function src:armor/berserker/dragonslayer/hit

# follow user
tag @s add berserker.dragonslayer.curr
scoreboard players operation %berserker.dragonslayer.search user.id = @s user.id
execute as @a[tag=berserker.dragonslayer.user] at @s if score @s user.id = %berserker.dragonslayer.search user.id as @e[type=item_display,limit=1,sort=nearest,tag=berserker.dragonslayer.curr] run tp @s ~ ~1 ~
tag @s remove berserker.dragonslayer.curr
scoreboard players reset %berserker.dragonslayer.search

# time until end
scoreboard players add @s generic.math 1
execute if score @s generic.math matches 7.. run function src:armor/berserker/dragonslayer/end