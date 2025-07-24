## Running at falling sunspear
# collision
execute if entity @a[distance=..2] run function labyrinth:mobs/bosses/cinder/range/sunspear/falling/explode
execute unless block ~ ~ ~ #labyrinth:passable run function labyrinth:mobs/bosses/cinder/range/sunspear/falling/explode

# movement
execute unless score @s labyrinth.cd >= @s labyrinth.cdMax run scoreboard players add @s labyrinth.cd 1
execute unless score @s labyrinth.cd >= @s labyrinth.cdMax rotated as @s run tp @s ~ ~ ~ facing entity @p
execute if score @s labyrinth.cd = @s labyrinth.cdMax run tp @s ^ ^ ^2

# vfx
execute if score @s labyrinth.cd = @s labyrinth.cdMax run function labyrinth:mobs/bosses/cinder/range/sunspear/vfx_spear_falling