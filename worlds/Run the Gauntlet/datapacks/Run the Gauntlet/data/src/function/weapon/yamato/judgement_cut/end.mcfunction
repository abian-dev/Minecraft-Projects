## Ends judgement cut
tag @s add yamato.judgementcut.curr
execute unless entity @e[type=area_effect_cloud,tag=!yamato.judgementcut.curr,tag=yamato.judgementcut] as @a[tag=yamato.judgementcut.user] run attribute @s gravity modifier remove gravity.yamato.judgementcut
execute unless entity @e[type=area_effect_cloud,tag=!yamato.judgementcut.curr,tag=yamato.judgementcut] run tag @a[tag=yamato.judgementcut.user] remove yamato.judgementcut.user
particle flash{color:[0.0,0.0,0.0,1.0]} ~ ~ ~ 0 0 0 0 2 force
kill @s