## Runs Judgement Cut Slash
# initialize
scoreboard players set %vfxJudgementCut.2 generic.constant 2
scoreboard players set %vfxJudgementCut.10 generic.constant 10

# compute
execute store result score %vfxJudgementCut.particle generic.constant run random value 1..6
execute store result score %vfxJudgementCut.radius generic.constant run random value 2..4
scoreboard players operation %vfxJudgementCut.accuracy generic.constant = %vfxJudgementCut.radius generic.constant
scoreboard players operation %vfxJudgementCut.accuracy generic.constant *= %vfxJudgementCut.10 generic.constant
scoreboard players operation %vfxJudgementCut.speed generic.constant = %vfxJudgementCut.accuracy generic.constant
scoreboard players operation %vfxJudgementCut.speed generic.constant /= %vfxJudgementCut.2 generic.constant

# store parameters
execute if score %vfxJudgementCut.particle generic.constant matches 1..2 run data modify storage minecraft:vfx curr.judgementCut.particle set value "dust{color:[0.0,0.0,0.0],scale:0.8}"
execute if score %vfxJudgementCut.particle generic.constant matches 3..6 run data modify storage minecraft:vfx curr.judgementCut.particle set value "electric_spark"

execute store result storage minecraft:vfx curr.judgementCut.radius int 1 run scoreboard players get %vfxJudgementCut.radius generic.constant
execute store result storage minecraft:vfx curr.judgementCut.accuracy int 1 run scoreboard players get %vfxJudgementCut.accuracy generic.constant
execute store result storage minecraft:vfx curr.judgementCut.speed int 1 run scoreboard players get %vfxJudgementCut.speed generic.constant
execute store result storage minecraft:vfx curr.judgementCut.completion int 1 run random value 50..100
execute store result storage minecraft:vfx curr.judgementCut.pitch int 1 run random value 0..90

data modify storage minecraft:vfx curr.judgementCut.thickness set value 0
data modify storage minecraft:vfx curr.judgementCut.acceleration set value 0

# slash
function src:generic/vfx/slash_circle/play with storage minecraft:vfx curr.judgementCut

# reset
scoreboard players reset %vfxJudgementCut.particle
scoreboard players reset %vfxJudgementCut.radius
scoreboard players reset %vfxJudgementCut.accuracy
scoreboard players reset %vfxJudgementCut.speed
scoreboard players reset %vfxJudgementCut.2
scoreboard players reset %vfxJudgementCut.10