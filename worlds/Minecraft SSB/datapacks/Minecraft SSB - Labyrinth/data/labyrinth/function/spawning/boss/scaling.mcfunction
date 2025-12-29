say SCALING BOSS!!!!
$execute store result score @s labyrinth.count run execute if entity @a[predicate=labyrinth:zones/boss/$(bossName)]
execute if score @s labyrinth.count matches 4.. run attribute @s minecraft:max_health modifier add labyrinth.boss.healthscaling4 1 add_multiplied_base
execute if score @s labyrinth.count matches 3 run attribute @s minecraft:max_health modifier add labyrinth.boss.healthscaling3 1 add_multiplied_base
execute if score @s labyrinth.count matches 2 run attribute @s minecraft:max_health modifier add labyrinth.boss.healthscaling2 1 add_multiplied_base
scoreboard players reset @s labyrinth.count

execute store result score %bossMaxHp labyrinth.math run attribute @s minecraft:max_health get 1.0
execute store result score %bossQuarterHp labyrinth.math run attribute @s minecraft:max_health get 0.25
execute store result score %bossCurrHp labyrinth.math run data get entity @s Health 1.0
scoreboard players operation %bossCurrHp labyrinth.math += %bossQuarterHp labyrinth.math
execute if score %bossCurrHp labyrinth.math > %bossMaxHp labyrinth.math run scoreboard players operation %bossCurrHp labyrinth.math = %bossMaxHp labyrinth.math
execute store result entity @s Health int 1.0 run scoreboard players get %bossCurrHp labyrinth.math
scoreboard players reset %bossMaxHp labyrinth.math
scoreboard players reset %bossQuarterHp labyrinth.math
scoreboard players reset %bossCurrHp labyrinth.math

$execute store result bossbar minecraft:labyrinth.bossbar.$(bossName) max run attribute @s minecraft:max_health get
