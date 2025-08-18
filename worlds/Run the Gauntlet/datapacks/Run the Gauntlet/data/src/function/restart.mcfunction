## Resets everything
# message
tellraw @a ["",{"text":"restarting src...","color":"red"}]

# teams
team remove ally
team remove enemy

# input
scoreboard objectives remove in.rmb.holdTime
scoreboard objectives remove in.rmb.on
scoreboard objectives remove in.rmb.off

scoreboard objectives remove in.jump.holdTime
scoreboard objectives remove in.jump.on
scoreboard objectives remove in.jump.off

scoreboard objectives remove in.sneak.holdTime
scoreboard objectives remove in.sneak.on

scoreboard objectives remove in.w.on
scoreboard objectives remove in.a.on
scoreboard objectives remove in.s.on
scoreboard objectives remove in.d.on

scoreboard objectives remove in.w.holdTime
scoreboard objectives remove in.a.holdTime
scoreboard objectives remove in.s.holdTime
scoreboard objectives remove in.d.holdTime

scoreboard objectives remove in.sequence
scoreboard objectives remove in.sequence.cd
scoreboard objectives remove in.sequence.cd2

# cd
scoreboard objectives remove quickswap.cd
scoreboard objectives remove weapon.cd
scoreboard objectives remove weapon.cd2
scoreboard objectives remove armor.cd
scoreboard objectives remove armor.cd2

# cost
scoreboard objectives remove cost.regen.multiplier
scoreboard objectives remove cost.regen.rate
scoreboard objectives remove cost.ammo.bullet
scoreboard objectives remove cost.ammo.energy
scoreboard objectives remove cost.ammo.rocket
scoreboard objectives remove cost.ammo.shell
scoreboard objectives remove cost.energy
scoreboard objectives remove cost.energyBase
scoreboard objectives remove cost.energyMax
scoreboard objectives remove cost.stamina
scoreboard objectives remove cost.staminaBase
scoreboard objectives remove cost.staminaMax

# effect
scoreboard objectives remove effect.burning.duration
scoreboard objectives remove effect.frozen.duration
scoreboard objectives remove effect.harvest.duration
scoreboard objectives remove effect.lockedOn.duration
scoreboard objectives remove effect.stun.duration

# criterion
scoreboard objectives remove criterion.death
scoreboard objectives remove criterion.dmgdealt
scoreboard objectives remove criterion.drop
scoreboard objectives remove criterion.leave

# spawning
scoreboard objectives remove spawning.cd
scoreboard objectives remove spawning.cdMax

scoreboard objectives remove spawning.entity
scoreboard objectives remove spawning.entityMax

scoreboard objectives remove spawning.spawner.id

# system
scoreboard objectives remove system.deathTimer
scoreboard objectives remove system.global
scoreboard objectives remove system.lives
scoreboard objectives remove system.ui
scoreboard objectives remove system.ui.id

# cosmetics
scoreboard objectives remove cosmetics.killFx.id
scoreboard objectives remove cosmetics.killMsg.id

# extra
scoreboard objectives remove selecteditem.slot.curr
scoreboard objectives remove selecteditem.slot.prev

scoreboard objectives remove user.id

scoreboard objectives remove ability.kills
scoreboard objectives remove ability.uses

# mobs
scoreboard objectives remove mob.motion.x
scoreboard objectives remove mob.motion.y
scoreboard objectives remove mob.motion.z

scoreboard objectives remove mob.motion.dx
scoreboard objectives remove mob.motion.dy
scoreboard objectives remove mob.motion.dz

# generic
function src:generic/restart