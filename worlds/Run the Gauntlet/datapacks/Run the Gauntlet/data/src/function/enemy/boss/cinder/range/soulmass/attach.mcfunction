## Attach soulmass to caster
tp @s ~ ~ ~ facing entity @p
execute if score @s labyrinth.math matches 1 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^2.0 ^0.0 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 2 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^1.73 ^1.0 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 3 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^1.0 ^1.73 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 4 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^0.0 ^2.0 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 5 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^-1.0 ^1.73 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 6 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^-1.73 ^1.0 ^0 run tp @s ~ ~ ~
execute if score @s labyrinth.math matches 7 positioned as @e[type=!#labyrinth:non_entity,type=!player,limit=1,sort=nearest] positioned ~ ~2 ~ positioned ^-2.0 ^0.0 ^0 run tp @s ~ ~ ~