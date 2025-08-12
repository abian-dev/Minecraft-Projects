## Assign tasks to players
# core systems
execute if score @s criterion.drop matches 1.. as @e[type=item] at @s run function src:system/util/drop_prevent
execute if score @s criterion.leave matches 1.. run function src:system/util/reset

# right click
execute unless score @s in.rmb.on matches ..0 run scoreboard players remove @s in.rmb.on 1
execute unless score @s in.rmb.off matches ..0 run scoreboard players remove @s in.rmb.off 1
execute if score @s in.rmb.on matches 1 run scoreboard players set @s in.rmb.off 1
execute if score @s in.rmb.on matches 0 run scoreboard players reset @s in.rmb.holdTime

# wasd
execute if predicate src:input/forward run function src:generic/input/forward
execute if predicate src:input/backward run function src:generic/input/backward
execute if predicate src:input/left run function src:generic/input/left
execute if predicate src:input/right run function src:generic/input/right

execute unless score @s in.w.on matches ..0 run scoreboard players remove @s in.w.on 1
execute unless score @s in.a.on matches ..0 run scoreboard players remove @s in.a.on 1
execute unless score @s in.s.on matches ..0 run scoreboard players remove @s in.s.on 1
execute unless score @s in.d.on matches ..0 run scoreboard players remove @s in.d.on 1

execute if score @s in.w.on matches 1 run scoreboard players reset @s in.w.holdTime
execute if score @s in.a.on matches 1 run scoreboard players reset @s in.a.holdTime
execute if score @s in.s.on matches 1 run scoreboard players reset @s in.s.holdTime
execute if score @s in.d.on matches 1 run scoreboard players reset @s in.d.holdTime

# jump
execute if predicate src:input/jump run function src:generic/input/jump
execute unless score @s in.jump.on matches ..0 run scoreboard players remove @s in.jump.on 1
execute unless score @s in.jump.off matches ..0 run scoreboard players remove @s in.jump.off 1
execute if score @s in.jump.on matches 1 run scoreboard players set @s in.jump.off 1
execute if score @s in.jump.on matches 1 run scoreboard players reset @s in.jump.holdTime

# sneak
execute if predicate src:input/sneak run function src:generic/input/sneak
execute unless score @s in.sneak.on matches ..0 run scoreboard players remove @s in.sneak.on 1
execute if score @s in.sneak.on matches 1 run scoreboard players reset @s in.sneak.holdTime

# input sequence
execute unless score @s in.sequence.cd matches ..0 run scoreboard players remove @s in.sequence.cd 1
execute unless score @s in.sequence.cd2 matches ..0 run scoreboard players remove @s in.sequence.cd2 1
execute if score @s in.sequence.cd2 matches ..1 run scoreboard players reset @s in.sequence
execute if predicate src:input/any_on if score @s in.sequence.cd matches ..0 run function src:generic/input/sequence/recorder/main

# ui
function src:system/ui/player/main
execute if items entity @s weapon.* *[custom_data={leave.gauntlet:1b}] if score @s in.rmb.on matches 1.. run function src:system/games/gauntlet/queue/session/leave
execute if items entity @s weapon.* *[custom_data={leave.pvp:1b}] if score @s in.rmb.on matches 1.. run function src:system/games/pvp/queue/session/leave

# cooldowns
execute unless score @s armor.cd matches ..0 run scoreboard players remove @s armor.cd 1
execute unless score @s armor.cd2 matches ..0 run scoreboard players remove @s armor.cd2 1
execute unless score @s weapon.cd matches ..0 run scoreboard players remove @s weapon.cd 1
execute unless score @s weapon.cd2 matches ..0 run scoreboard players remove @s weapon.cd2 1
execute unless score @s quickswap.cd matches ..0 run scoreboard players remove @s quickswap.cd 1

# costs
execute unless score @s cost.regen.rate matches 1.. run function src:system/util/cost_regen/rate
execute if score @s cost.regen.rate matches 1.. run function src:system/util/cost_regen/timer

## The following executes only if the entity is not stunned
execute if score @s effect.stun.duration matches 1.. run return fail

# armor
execute if predicate src:armorset/berserker run function src:armor/berserker/main
execute if predicate src:armorset/praetor run function src:armor/praetor/main
execute if predicate src:armorset/clothes run function src:armor/clothes/main

# weapons
execute if items entity @s[scores={quickswap.cd=..0}] weapon.mainhand *[custom_data={weapon:1b}] run function src:weapon/quickswap
execute if predicate src:mainhand/ballista run function src:weapon/ballista/main
execute if predicate src:mainhand/precision_bolt run function src:weapon/precision_bolt/main
execute if predicate src:mainhand/rocket_launcher run function src:weapon/rocket_launcher/main
execute if predicate src:mainhand/super_shotgun run function src:weapon/super_shotgun/main

execute if predicate src:mainhand/mirage_edge run function src:weapon/mirage_edge/main
execute if predicate src:mainhand/yamato run function src:weapon/yamato/main

execute if predicate src:mainhand/limitless run function src:weapon/limitless/main
execute if predicate src:mainhand/miracles run function src:weapon/miracles/main

# reset criterion scores
scoreboard players reset @s criterion.dmgdealt
scoreboard players reset @s criterion.drop
scoreboard players reset @s criterion.leave