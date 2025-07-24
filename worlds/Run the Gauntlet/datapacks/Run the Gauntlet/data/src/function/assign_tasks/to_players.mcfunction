## Assign tasks to players
# core systems
execute if score @s criterion.drop matches 1.. as @e[type=item] at @s run function src:system/util/drop_prevent
execute if score @s criterion.leave matches 1.. run function src:system/util/reset

# right click detection
execute unless score @s in.rmb.on matches ..0 run scoreboard players remove @s in.rmb.on 1
execute unless score @s in.rmb.off matches ..0 run scoreboard players remove @s in.rmb.off 1
execute if score @s in.rmb.on matches 1 run scoreboard players set @s in.rmb.off 1
execute if score @s in.rmb.on matches 0 run scoreboard players reset @s in.rmb.holdTime

# jump detection
execute if predicate src:input/jump run function src:generic/input/jump
execute unless score @s in.jump.on matches ..0 run scoreboard players remove @s in.jump.on 1
execute unless score @s in.jump.off matches ..0 run scoreboard players remove @s in.jump.off 1
execute if score @s in.jump.on matches 1 run scoreboard players set @s in.jump.off 1

# cooldowns
execute unless score @s armor.cd matches ..0 run scoreboard players remove @s armor.cd 1
execute unless score @s armor.cd2 matches ..0 run scoreboard players remove @s armor.cd2 1
execute unless score @s weapon.cd matches ..0 run scoreboard players remove @s weapon.cd 1
execute unless score @s weapon.cd2 matches ..0 run scoreboard players remove @s weapon.cd2 1
execute unless score @s quickswap.cd matches ..0 run scoreboard players remove @s quickswap.cd 1

# ui
function src:system/ui/player/main
execute if items entity @s weapon.* *[custom_data={leave.gauntlet:1b}] if score @s in.rmb.on matches 1.. run function src:system/games/gauntlet/queue/session/leave

## The following executes only if the entity is not stunned
execute if score @s effect.stun.duration matches 1.. run return fail

# armor
execute if predicate src:armorset/praetor run function src:armor/praetor/main

# weapons
execute if items entity @s[scores={quickswap.cd=..0}] weapon.mainhand *[custom_data={weapon:1b}] run function src:weapon/quickswap
execute if predicate src:mainhand/ballista run function src:weapon/ballista/main
execute if predicate src:mainhand/precision_bolt run function src:weapon/precision_bolt/main
execute if predicate src:mainhand/rocket_launcher run function src:weapon/rocket_launcher/main
execute if predicate src:mainhand/super_shotgun run function src:weapon/super_shotgun/main

# reset criterion scores
scoreboard players reset @s criterion.dmgdealt
scoreboard players reset @s criterion.drop
scoreboard players reset @s criterion.leave