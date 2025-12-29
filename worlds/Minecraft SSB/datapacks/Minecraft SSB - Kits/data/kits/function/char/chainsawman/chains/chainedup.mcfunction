execute positioned ~ ~1 ~ run function kits:generic/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"30","inaccuracy":"3","yaw":"200","pitch":"45","vfx":"particle dust{color:[0.5,0.5,0.5],scale:0.75} ^ ^ ^0.8 0 0 0 0 1 force"}

execute if entity @s[tag=!DenjiChainedGrab] run scoreboard players add @p[tag=Denji] kits.timer3 1
execute if entity @s[tag=!DenjiChainedGrab] if entity @p[tag=Denji,scores={kits.timer3=40..}] run tag @s remove DenjiChained
execute if entity @s[tag=!DenjiChainedGrab] run scoreboard players reset @p[tag=Denji,scores={kits.timer3=40..}] kits.timer3

execute at @s facing entity @p[tag=Denji] feet positioned ~ ~0.25 ~ run function kits:char/chainsawman/chains/raycast
execute as @p[tag=Denji,tag=DenjiChainsaw,scores={kits.ability1CD=10..99},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/chainsawman/chains/pull 

execute if entity @s[tag=DenjiChainedGrab] run function kits:char/chainsawman/chains/grab