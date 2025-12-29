# Ability CDs
title @s[tag=!DenjiChainsaw,scores={kits.timer=..4}] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer"},"color":"red"},{"text":"/5","color":"red"}]
title @s[tag=!DenjiChainsaw,scores={kits.timer=5..}] actionbar ["",{"text":"Groin Kick: "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"CORD IS READY","color":"red"}]
title @s[tag=DenjiChainsaw,scores={kits.timer=..4}] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"Blood: ","color":"red"},{"score":{"name":"@s","objective":"kits.timer"},"color":"red"},{"text":"/5","color":"red"}]
title @s[tag=DenjiChainsaw,scores={kits.timer=5..}] actionbar ["",{"text":"Chain Wrap:","color":"dark_red"},{"text":" "},{"score":{"name":"@s","objective":"kits.ability1CD"}},{"text":"/100","color":"white"},{"text":" || "},{"text":"Chainsaw Mode Time: ","color":"gold"},{"score":{"name":"@s","objective":"kits.timer2"},"color":"gold"},{"text":"/300","color":"gold"},{"text":" || "},{"text":"CORD IS READY","color":"red"}]

# Blood passive
execute at @s[scores={kits.timer=..5}] run scoreboard players add @s[scores={kits.criterion.attack=1..}] kits.timer 1
execute at @s[tag=DenjiChainsaw,scores={kits.criterion.attack=1..}] run playsound minecraft:entity.bee.hurt neutral @a[distance=..10] ~ ~ ~ 3 0 1
execute at @s[tag=DenjiChainsaw,scores={kits.criterion.attack=1..}] run particle crit ^ ^1.1 ^2 0.5 0 0.5 0 20 force

# Groin Kick
scoreboard players add @s[scores={kits.ability1CD=..99}] kits.ability1CD 1
execute as @s[tag=!DenjiChainsaw,scores={kits.ability1CD=100..},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/chainsawman/weapon1cos

# Chain Wrap
execute as @s[tag=DenjiChainsaw,scores={kits.ability1CD=100..},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:char/chainsawman/weapon1cos2
execute as @e[type=area_effect_cloud,tag=ChainsawmanChain] at @s run function kits:char/chainsawman/chains/projectile
execute as @e[tag=DenjiChained] at @s run function kits:char/chainsawman/chains/chainedup

# Cord
execute as @s[scores={kits.timer=5..},predicate=kits:items/chainsawman/chainsaw] as @s[gamemode=!spectator,scores={kits.criterion.shift=1..}] at @s run function kits:char/chainsawman/weapon1shift
execute as @s[tag=DenjiChainsaw] run function kits:char/chainsawman/devil/main
