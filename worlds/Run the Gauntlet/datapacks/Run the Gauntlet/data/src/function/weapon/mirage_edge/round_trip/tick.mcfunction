## Executed at round trip every tick
tp @s ~ ~ ~ ~40 ~
execute positioned ^ ^1.25 ^1.50 run function src:weapon/mirage_edge/round_trip/vfx_sword
particle dust{color:[0.0,1.0,1.0],scale:1.0} ^ ^1.25 ^-2.00 0 0 0 0 1 force
particle dust{color:[0.0,1.0,1.0],scale:1.0} ^ ^1.25 ^2.00 0 0 0 0 1 force

# collision
execute as @e[type=!#src:non_entity,distance=..10,tag=!mirageedge.roundtrip.user,team=!ally] at @s facing entity @e[type=armor_stand,limit=1,sort=nearest,tag=mirageedge.roundtrip] feet if block ^ ^ ^0.5 #src:passable positioned ^ ^ ^0.1 run tp @s ~ ~ ~
execute as @e[type=!#src:non_entity,distance=..3,tag=!mirageedge.roundtrip.user,team=!ally] at @s run function src:weapon/mirage_edge/round_trip/hit

# phases
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches ..10 run function src:weapon/mirage_edge/round_trip/move
execute if score @s generic.math matches 60.. run function src:weapon/mirage_edge/round_trip/end