## Gets Vector From Position to Point
# get pos and point
execute store result score %vfxJudgementCut.x generic.x run random value -200..200
execute store result score %vfxJudgementCut.y generic.y run random value -90..90
execute store result score %vfxJudgementCut.px generic.x run random value -200..200
execute store result score %vfxJudgementCut.py generic.y run random value -90..90

# get vector from pos to point
scoreboard players operation %vfxJudgementCut.vx generic.x = %vfxJudgementCut.px generic.x
scoreboard players operation %vfxJudgementCut.vy generic.y = %vfxJudgementCut.py generic.y
scoreboard players operation %vfxJudgementCut.vx generic.x -= %vfxJudgementCut.x generic.x
scoreboard players operation %vfxJudgementCut.vy generic.y -= %vfxJudgementCut.y generic.y

# calculate absolute max
scoreboard players operation %vfxJudgementCut.absVx generic.x = %vfxJudgementCut.vx generic.x
scoreboard players operation %vfxJudgementCut.absVy generic.y = %vfxJudgementCut.vy generic.y
execute if score %vfxJudgementCut.absVx generic.x matches ..0 run scoreboard players operation %vfxJudgementCut.absVx generic.x *= %vfxJudgementCut.-1 generic.constant
execute if score %vfxJudgementCut.absVy generic.y matches ..0 run scoreboard players operation %vfxJudgementCut.absVy generic.y *= %vfxJudgementCut.-1 generic.constant