# note: called in tick
## Running at soul of cinder
# when hurt
execute if entity @s[nbt={HurtTime:10s}] run function labyrinth:mobs/bosses/cinder/hurt

# initialize random delay and move
execute if score @s labyrinth.cd matches 0 run function labyrinth:mobs/bosses/cinder/init

# cooldown between each move
execute if score @s labyrinth.cd < @s labyrinth.cdMax run scoreboard players add @s labyrinth.cd 1

# play moveset
execute if score @s labyrinth.cd = @s labyrinth.cdMax run function labyrinth:mobs/bosses/cinder/moveset