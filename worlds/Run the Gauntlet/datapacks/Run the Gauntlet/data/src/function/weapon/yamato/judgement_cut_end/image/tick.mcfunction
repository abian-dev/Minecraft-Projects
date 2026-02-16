## Executed at afterimage every tick
# execute rotated ~180 0 positioned ~ ~-0.1 ~ run function src:weapon/yamato/judgement_cut_end/image/vfx
particle squid_ink ~ ~1 ~ 0 0 0 0 1 force

# ties behavior to user id
tag @s add yamato.jce.image.curr
scoreboard players operation %yamato.jce.image.search user.id = @s user.id

# movement
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute unless score @s generic.math matches 10.. run tp @s ^ ^ ^2
execute if score @s generic.math matches 10 run tp @s ~ ~ ~ ~180 ~
execute if score @s generic.math matches 10 run execute store result entity @s[x_rotation=-90..-1] Rotation[1] float -1 run data get entity @s Rotation[1]
execute if score @s generic.math matches 40.. as @a[tag=yamato.jce.user] if score @s user.id = %yamato.jce.image.search user.id at @e[type=mannequin,limit=1,sort=nearest,tag=yamato.jce.image.curr] run tp @e[type=mannequin,limit=1,sort=nearest,tag=yamato.jce.image.curr] ^ ^ ^2 facing entity @s

# terminate conditions
execute if score @s generic.math matches 40.. as @a[distance=..2,tag=yamato.jce.user] if score @s user.id = %yamato.jce.image.search user.id as @e[type=mannequin,limit=1,sort=nearest,tag=yamato.jce.image.curr] run function src:weapon/yamato/judgement_cut_end/image/end
execute if score @s generic.math matches 60.. run function src:weapon/yamato/judgement_cut_end/image/end

# reset
tag @s remove yamato.jce.image.curr
scoreboard players reset %yamato.jce.image.search