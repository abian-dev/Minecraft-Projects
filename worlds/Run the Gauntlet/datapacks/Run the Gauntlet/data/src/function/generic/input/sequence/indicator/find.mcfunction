## Finds and translates input sequence
# get last digit using int division
scoreboard players operation %in.sequence.lastDigit in.sequence = %in.sequence.truncated in.sequence
scoreboard players operation %in.sequence.truncated in.sequence /= %in.sequence.10 in.sequence
scoreboard players operation %in.sequence.truncated in.sequence *= %in.sequence.10 in.sequence
scoreboard players operation %in.sequence.lastDigit in.sequence -= %in.sequence.truncated in.sequence

# prepare truncated for next digit extraction
scoreboard players operation %in.sequence.truncated in.sequence /= %in.sequence.10 in.sequence

# translate digit and append to builder
execute if score %in.sequence.lastDigit in.sequence matches 1 run data modify storage input sequence.builder insert 0 value "W"
execute if score %in.sequence.lastDigit in.sequence matches 2 run data modify storage input sequence.builder insert 0 value "S"
execute if score %in.sequence.lastDigit in.sequence matches 3 run data modify storage input sequence.builder insert 0 value "A"
execute if score %in.sequence.lastDigit in.sequence matches 4 run data modify storage input sequence.builder insert 0 value "D"
execute if score %in.sequence.lastDigit in.sequence matches 5 run data modify storage input sequence.builder insert 0 value "Jump"
execute if score %in.sequence.lastDigit in.sequence matches 6 run data modify storage input sequence.builder insert 0 value "Sneak"

# move builder into fixed order
data modify storage input sequence.order.0 set value "?"
data modify storage input sequence.order.1 set value "?"
data modify storage input sequence.order.2 set value "?"

data modify storage input sequence.order.0 set from storage input sequence.builder[0]
data modify storage input sequence.order.1 set from storage input sequence.builder[1]
data modify storage input sequence.order.2 set from storage input sequence.builder[2]

# recursive call
scoreboard players remove %in.sequence.numDigits in.sequence 1
execute if score %in.sequence.numDigits in.sequence matches 1.. run function src:generic/input/sequence/indicator/find