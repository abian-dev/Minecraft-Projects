tellraw @a ["",{"text":"Restarting kits...","color":"red"}]

function kits:main/reset

# generic
function kits:generic/restart

# Storages
data remove storage kits:kits ekko
data remove storage kits:kits alucard
data remove storage kits:edit_item item

# Global Variables
scoreboard objectives remove kits.constant
scoreboard objectives remove kits.math

scoreboard objectives remove kits.x
scoreboard objectives remove kits.y
scoreboard objectives remove kits.z
scoreboard objectives remove kits.dx
scoreboard objectives remove kits.dy
scoreboard objectives remove kits.dz

scoreboard objectives remove kits.frame.index
scoreboard objectives remove kits.frame.rate

scoreboard objectives remove kits.id

# tied to a built-in action
scoreboard objectives remove kits.criterion.death

scoreboard objectives remove kits.criterion.damage
scoreboard objectives remove kits.criterion.absorbDmg
scoreboard objectives remove kits.criterion.resistDmg

scoreboard objectives remove kits.criterion.attack
scoreboard objectives remove kits.criterion.block

scoreboard objectives remove kits.criterion.chest
scoreboard objectives remove kits.criterion.carrot
scoreboard objectives remove kits.criterion.pot

scoreboard objectives remove kits.criterion.kill
scoreboard objectives remove kits.criterion.killPlayer

scoreboard objectives remove kits.criterion.COS
scoreboard objectives remove kits.criterion.COSoff
scoreboard objectives remove kits.criterion.COSon

scoreboard objectives remove kits.criterion.run
scoreboard objectives remove kits.criterion.jump
scoreboard objectives remove kits.criterion.shift
scoreboard objectives remove kits.criterion.shiftOff
scoreboard objectives remove kits.criterion.shiftOn

scoreboard objectives remove kits.criterion.bow
scoreboard objectives remove kits.criterion.crossbow

scoreboard objectives remove kits.criterion.swordIron
scoreboard objectives remove kits.criterion.swordNetherite

# helper scoreboards
scoreboard objectives remove kits.ability1CD
scoreboard objectives remove kits.ability2CD
scoreboard objectives remove kits.ability3CD
scoreboard objectives remove kits.ability4CD
scoreboard objectives remove kits.ability5CD
scoreboard objectives remove kits.ability6CD
scoreboard objectives remove kits.ability7CD

scoreboard objectives remove kits.timer
scoreboard objectives remove kits.timer2
scoreboard objectives remove kits.timer3
scoreboard objectives remove kits.timer4
scoreboard objectives remove kits.timer5
scoreboard objectives remove kits.timer6
scoreboard objectives remove kits.timer7
scoreboard objectives remove kits.timer8
scoreboard objectives remove kits.timer9
scoreboard objectives remove kits.timer10

scoreboard objectives remove kits.raycastTick
scoreboard objectives remove kits.raycastTick2
scoreboard objectives remove kits.raycastTick3
scoreboard objectives remove kits.raycastTick4
scoreboard objectives remove kits.raycastTick5

scoreboard objectives remove kits.health
scoreboard objectives remove kits.health2
scoreboard objectives remove kits.health3
scoreboard objectives remove kits.health4
scoreboard objectives remove kits.health5

scoreboard objectives remove kits.direction

# kit specific scoreboards
scoreboard objectives remove kits.specific.abianComboStun
scoreboard objectives remove kits.specific.abianMarked
scoreboard objectives remove kits.specific.abiankits.raycastTick
scoreboard objectives remove kits.specific.dariusBleedTime
scoreboard objectives remove kits.specific.dariusPassive
scoreboard objectives remove kits.specific.ekkoPassiveTick
scoreboard objectives remove kits.specific.ekkoResonance
scoreboard objectives remove kits.specific.itadorikits.raycastTick
scoreboard objectives remove kits.specific.jacketStunTick
scoreboard objectives remove kits.specific.noctisBleed
scoreboard objectives remove kits.specific.noctisBleed2
scoreboard objectives remove kits.specific.raidenCrescentTick
scoreboard objectives remove kits.specific.ryzeFluxTick
scoreboard objectives remove kits.specific.laiethStun
scoreboard objectives remove kits.specific.sekiroPosture
scoreboard objectives remove kits.specific.sekiroPostureTimer
scoreboard objectives remove kits.specific.sirisDarkfire
scoreboard objectives remove kits.specific.sirisDarkfire2
