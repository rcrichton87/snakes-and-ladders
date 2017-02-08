class Dice

def initialize
  @roll = 2
end

def roll_dice
  return @roll = 2 + rand(6) + rand(6)
end

end