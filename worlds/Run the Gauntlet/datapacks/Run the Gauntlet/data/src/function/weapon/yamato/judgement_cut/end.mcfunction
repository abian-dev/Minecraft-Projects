## Ends judgement cut
tag @s add yamato.judgementcut.curr
execute unless entity @e[type=area_effect_cloud,tag=!yamato.judgementcut.curr,tag=yamato.judgementcut] run attribute @p[tag=yamato.judgementcut.user] gravity modifier remove gravity.yamato.judgementcut
execute unless entity @e[type=area_effect_cloud,tag=!yamato.judgementcut.curr,tag=yamato.judgementcut] run tag @a[tag=yamato.judgementcut.user] remove yamato.judgementcut.user
kill @s