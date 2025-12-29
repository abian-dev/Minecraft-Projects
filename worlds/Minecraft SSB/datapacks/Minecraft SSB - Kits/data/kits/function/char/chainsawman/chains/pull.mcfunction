playsound minecraft:item.crossbow.quick_charge_3 neutral @a[distance=..20] ~ ~ ~ 10 0 1
effect clear @e[tag=DenjiChained,limit=1] wither
effect clear @e[tag=DenjiChained,limit=1] slowness
effect give @e[tag=DenjiChained,type=!minecraft:player,limit=1] minecraft:weakness 1 9 true
schedule function kits:char/chainsawman/chains/ensure 30t replace
scoreboard players reset @s kits.timer3
tag @e[tag=DenjiChained,limit=1] add DenjiChainedGrab
