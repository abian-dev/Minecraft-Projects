## Executed at chainsaw rip every tick
scoreboard players set @s generic.raycast.step 10
execute at @s rotated ~-30 ~30 positioned ^ ^ ^ run function src:weapon/chainsaw/rip/step
execute if score @s generic.z matches 20.. run function src:weapon/chainsaw/rip/entity_false
execute if score @s generic.raycast.step matches 0 unless score @s generic.z matches 20.. run function src:weapon/chainsaw/rip/entity_false
execute if score @s generic.raycast.step matches -1 unless score @s generic.z matches 20.. run function src:weapon/chainsaw/rip/entity_true
scoreboard players reset @s generic.raycast.step

# follow user
tag @s add chainsaw.rip.curr
scoreboard players operation %chainsaw.rip.search user.id = @s user.id
execute as @a[tag=chainsaw.rip.user] at @s if score @s user.id = %chainsaw.rip.search user.id as @e[type=item_display,limit=1,sort=nearest,tag=chainsaw.rip.curr] run tp @s ~ ~1 ~
tag @s remove chainsaw.rip.curr
scoreboard players reset %chainsaw.rip.search

# time until end
execute if score @s generic.math >= @s generic.constant run function src:weapon/chainsaw/rip/end