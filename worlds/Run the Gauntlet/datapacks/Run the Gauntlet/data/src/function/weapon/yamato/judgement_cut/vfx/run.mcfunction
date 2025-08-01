## Runs Judgement Cut
# constants
# increase M to make each step larger
scoreboard players set %vfxJudgementCut.-1 generic.constant -1
scoreboard players set %vfxJudgementCut.s generic.constant 100
scoreboard players set %vfxJudgementCut.m generic.constant 5

# get vector from pos to point
function src:weapon/yamato/judgement_cut/vfx/get

# find largest component
scoreboard players operation %vfxJudgementCut.max generic.z = %vfxJudgementCut.absVx generic.x
scoreboard players operation %vfxJudgementCut.max generic.z > %vfxJudgementCut.absVy generic.y

# normalize vector to unit vector
scoreboard players set %vfxJudgementCut.s generic.constant 100
scoreboard players operation %vfxJudgementCut.x generic.x *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.y generic.y *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.px generic.x *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.py generic.y *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.vx generic.x *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.vy generic.y *= %vfxJudgementCut.s generic.constant
scoreboard players operation %vfxJudgementCut.max generic.z /= %vfxJudgementCut.m generic.constant
scoreboard players operation %vfxJudgementCut.vx generic.x /= %vfxJudgementCut.max generic.z
scoreboard players operation %vfxJudgementCut.vy generic.y /= %vfxJudgementCut.max generic.z

# cut
function src:weapon/yamato/judgement_cut/vfx/cut