# example call: function src:weapon/limitless/purple/explode/use {"userFilter":"limitless.red.user","mergedWith":"limitless.blue"}
## Uses purple explosion
$kill @e[type=area_effect_cloud,limit=1,sort=nearest,tag=$(mergedWith)]

# search for user
scoreboard players operation %limitless.purple.explode.search user.id = @s user.id
$execute as @a[tag=$(userFilter)] at @s if score @s user.id = %limitless.purple.explode.search user.id run tag @s add limitless.purple.explode.user
scoreboard players reset %limitless.purple.explode.search

# detonate
function src:weapon/limitless/purple/explode/detonate