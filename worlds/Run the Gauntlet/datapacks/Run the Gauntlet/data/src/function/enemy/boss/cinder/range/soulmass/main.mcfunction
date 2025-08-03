## Running at soulmass
# collision
execute if entity @a[distance=..2] run function labyrinth:mobs/bosses/cinder/range/soulmass/explode
execute unless block ~ ~ ~ #labyrinth:passable run function labyrinth:mobs/bosses/cinder/range/soulmass/explode

# movement
execute if score @s labyrinth.cd < @s labyrinth.cdMax run scoreboard players add @s labyrinth.cd 1
execute if score @s labyrinth.cd < @s labyrinth.cdMax run function labyrinth:mobs/bosses/cinder/range/soulmass/attach
execute if score @s labyrinth.cd = @s labyrinth.cdMax run tp @s ^ ^ ^1

# vfx
particle dust{color:[0.0,1.0,1.0],scale:0.5} ~ ~ ~ 0.2 0.2 0.2 0 5 force
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force