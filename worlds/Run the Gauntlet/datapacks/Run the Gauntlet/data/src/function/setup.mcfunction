## Setup
# teams
team add ally
team add enemy

# input
scoreboard objectives add in.rmb.holdTime dummy
scoreboard objectives add in.rmb.on dummy
scoreboard objectives add in.rmb.off dummy

scoreboard objectives add in.jump.on dummy
scoreboard objectives add in.jump.off dummy

# cd
scoreboard objectives add quickswap.cd dummy
scoreboard objectives add weapon.cd dummy
scoreboard objectives add weapon.cd2 dummy
scoreboard objectives add armor.cd dummy
scoreboard objectives add armor.cd2 dummy

# effect
scoreboard objectives add effect.burning.duration dummy
scoreboard objectives add effect.frozen.duration dummy
scoreboard objectives add effect.stun.duration dummy
scoreboard objectives add effect.lockedOn.duration dummy

# criterion
scoreboard objectives add criterion.death deathCount
scoreboard objectives add criterion.dmgdealt custom:minecraft.damage_dealt
scoreboard objectives add criterion.drop minecraft.custom:minecraft.drop
scoreboard objectives add criterion.leave custom:minecraft.leave_game

# spawning
scoreboard objectives add spawning.cd dummy
scoreboard objectives add spawning.cdMax dummy

scoreboard objectives add spawning.entity dummy
scoreboard objectives add spawning.entityMax dummy

scoreboard objectives add spawning.spawner.id dummy

# system
scoreboard objectives add system.deathTimer dummy
scoreboard objectives add system.global dummy
scoreboard objectives add system.ui dummy
scoreboard objectives add system.ui.id dummy

# extra
scoreboard objectives add selecteditem.slot.curr dummy
scoreboard objectives add selecteditem.slot.prev dummy

scoreboard objectives add user.id dummy

scoreboard objectives add ability.kills dummy

# mobs
scoreboard objectives add mob.motion.x dummy
scoreboard objectives add mob.motion.y dummy
scoreboard objectives add mob.motion.z dummy

scoreboard objectives add mob.motion.dx dummy
scoreboard objectives add mob.motion.dy dummy
scoreboard objectives add mob.motion.dz dummy

# setup generic
function src:generic/setup