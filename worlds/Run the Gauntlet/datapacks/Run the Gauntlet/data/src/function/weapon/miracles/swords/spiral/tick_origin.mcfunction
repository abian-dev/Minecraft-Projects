## Executed at spiral sword origin every tick
tp @s ~ ~ ~ ~20 ~

# follow user
scoreboard players operation %miracles.swords.spiral.search user.id = @s user.id
execute as @a[tag=miracles.swords.spiral.user] at @s if score @s user.id = %miracles.swords.spiral.search user.id as @e[type=area_effect_cloud,tag=miracles.swords.spiral.origin] if score @s user.id = %miracles.swords.spiral.search user.id run tp @s ~ ~ ~
execute at @s as @e[type=area_effect_cloud,tag=miracles.swords.spiral] if score @s user.id = %miracles.swords.spiral.search user.id run function src:weapon/miracles/swords/spiral/attach
scoreboard players reset %miracles.swords.spiral.search

# automatic despawn duration
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 60.. run function src:weapon/miracles/swords/spiral/end